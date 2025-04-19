import { Component, ElementRef, HostListener, OnInit, ViewChild, OnDestroy, Renderer2, AfterViewInit } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-main-ui',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './main-ui.component.html',
  styleUrls: ['./main-ui.component.css']
})
export class MainUIComponent implements OnInit, OnDestroy, AfterViewInit {
  @ViewChild('hiddenInput', { static: false }) hiddenInput!: ElementRef;
  @ViewChild('textDisplay', { static: false }) textDisplay!: ElementRef;
  
  // Test configuration
  timeOptions: number[] = [15, 30, 60]; // in seconds
  selectedTime: number = 30;
  timeLeft: number = 30;
  testMode: 'words' | 'quotes' = 'words';
  
  // Test state
  isTestActive: boolean = false;
  isTestComplete: boolean = false;
  timer: any;
  
  // Performance metrics
  wpm: number = 0;
  accuracy: number = 100;
  
  // Word generation
  words: string[] = [];
  currentWordIndex: number = 0;
  currentCharIndex: number = 0;
  
  // Word display elements
  wordElements: HTMLSpanElement[] = [];
  
  // Common words for the test
  commonWords: string[] = [
    'the', 'be', 'to', 'of', 'and', 'a', 'in', 'that', 'have', 'I',
    'it', 'for', 'not', 'on', 'with', 'he', 'as', 'you', 'do', 'at',
    'this', 'but', 'his', 'by', 'from', 'they', 'we', 'say', 'her', 'she',
    'or', 'an', 'will', 'my', 'one', 'all', 'would', 'there', 'their', 'what',
    'so', 'up', 'out', 'if', 'about', 'who', 'get', 'which', 'go', 'me',
    'when', 'make', 'can', 'like', 'time', 'no', 'just', 'him', 'know', 'take',
    'people', 'into', 'year', 'your', 'good', 'some', 'could', 'them', 'see', 'other',
    'than', 'then', 'now', 'look', 'only', 'come', 'its', 'over', 'think', 'also'
  ];
  
  // Quotes for quote mode
  quotes: string[] = [
    "The quick brown fox jumps over the lazy dog.",
    "Life is what happens when you're busy making other plans.",
    "The only way to do great work is to love what you do.",
    "In the end, it's not the years in your life that count. It's the life in your years.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts."
  ];
  
  // Typing statistics
  correctChars: number = 0;
  incorrectChars: number = 0;
  totalTypedChars: number = 0;
  
  // Current test text
  currentText: string = '';
  typedText: string = '';
  
  // Cursor blinking state
  cursorBlinkInterval: any;
  isCursorVisible: boolean = true;
  
  // Initial text for display
  initialText: string = '<span class="text-yellow-500">click</span> <span class="mx-1">to</span> <span class="mx-1">start</span> <span class="mx-1">typing</span> <span class="mx-1">test</span>';
  
  constructor(private renderer: Renderer2) { }

  ngOnInit(): void {
    this.resetTest();
  }
  
  ngAfterViewInit(): void {
    // Start cursor blinking after view is initialized
    this.startCursorBlinking();
  }

  ngOnDestroy(): void {
    // Clear intervals when component is destroyed
    this.clearIntervals();
  }

  clearIntervals(): void {
    if (this.timer) {
      clearInterval(this.timer);
      this.timer = null;
    }
    
    if (this.cursorBlinkInterval) {
      clearInterval(this.cursorBlinkInterval);
      this.cursorBlinkInterval = null;
    }
  }

  startCursorBlinking(): void {
    // Clear any existing interval
    if (this.cursorBlinkInterval) {
      clearInterval(this.cursorBlinkInterval);
    }
    
    // Set up blinking cursor
    this.cursorBlinkInterval = setInterval(() => {
      this.isCursorVisible = !this.isCursorVisible;
      this.updateCursorVisibility();
    }, 500); // Blink every 500ms
  }
  
  updateCursorVisibility(): void {
    if (!this.isTestActive || !this.textDisplay || this.wordElements.length === 0) return;
    
    const currentWordElement = this.wordElements[this.currentWordIndex];
    if (!currentWordElement) return;
    
    const charElements = Array.from(currentWordElement.children);
    if (this.currentCharIndex >= charElements.length) return;
    
    const currentCharElement = charElements[this.currentCharIndex] as HTMLElement;
    if (!currentCharElement) return;
    
    // Toggle cursor visibility
    if (this.isCursorVisible) {
      this.renderer.addClass(currentCharElement, 'cursor-indicator');
    } else {
      this.renderer.removeClass(currentCharElement, 'cursor-indicator');
    }
  }

  @HostListener('document:click')
  onDocumentClick(): void {
    if (!this.isTestActive && !this.isTestComplete) {
      this.startTest();
    }
    
    // Focus on the hidden input
    setTimeout(() => {
      if (this.hiddenInput) {
        this.hiddenInput.nativeElement.focus();
      }
    }, 0);
  }
  
  @HostListener('document:keydown', ['$event'])
  handleKeyDown(event: KeyboardEvent): void {
    // Prevent default behavior for certain keys
    if (event.key === 'Tab') {
      event.preventDefault();
    }
    
    // If test is not active, don't process input
    if (!this.isTestActive) {
      if (event.key === ' ' || event.key === 'Enter') {
        event.preventDefault();
        this.startTest();
      }
      return;
    }
    
    // Handle user input
    this.processUserInput(event);
  }
  
  selectTime(time: number): void {
    this.selectedTime = time;
    this.timeLeft = time;
    this.resetTest();
  }
  
  selectMode(mode: 'words' | 'quotes'): void {
    this.testMode = mode;
    this.resetTest();
  }
  
  startTest(): void {
    if (this.isTestActive) return;
    
    this.isTestActive = true;
    this.isTestComplete = false;
    
    // Generate words or select a quote
    this.generateText();
    
    // Render the text
    this.renderText();
    
    // Start the timer
    this.startTimer();
    
    // Focus on the hidden input
    setTimeout(() => {
      if (this.hiddenInput) {
        this.hiddenInput.nativeElement.focus();
      }
    }, 0);
  }
  
  resetTest(): void {
    // Clear any existing timer
    this.clearIntervals();
    
    // Reset test state
    this.isTestActive = false;
    this.isTestComplete = false;
    this.timeLeft = this.selectedTime;
    
    // Reset performance metrics
    this.wpm = 0;
    this.accuracy = 100;
    
    // Reset word indices
    this.currentWordIndex = 0;
    this.currentCharIndex = 0;
    
    // Reset typing statistics
    this.correctChars = 0;
    this.incorrectChars = 0;
    this.totalTypedChars = 0;
    
    // Reset text
    this.currentText = '';
    this.typedText = '';
    
    // Update the display if the view is initialized
    if (this.textDisplay) {
      this.textDisplay.nativeElement.innerHTML = this.initialText;
    }
  }
  
  generateText(): void {
    if (this.testMode === 'words') {
      // Generate random words
      this.words = [];
      for (let i = 0; i < 100; i++) { // Generate 100 words
        const randomIndex = Math.floor(Math.random() * this.commonWords.length);
        this.words.push(this.commonWords[randomIndex]);
      }
      this.currentText = this.words.join(' ');
    } else {
      // Select a random quote
      const randomIndex = Math.floor(Math.random() * this.quotes.length);
      this.currentText = this.quotes[randomIndex];
      this.words = this.currentText.split(' ');
    }
  }
  
  renderText(): void {
    if (!this.textDisplay) return;
    
    const textDisplayElement = this.textDisplay.nativeElement;
    this.renderer.setProperty(textDisplayElement, 'innerHTML', '');
    this.wordElements = [];
    
    // Split the text into words
    const words = this.currentText.split(' ');
    
    // Create span elements for each word
    words.forEach((word, wordIndex) => {
      const wordSpan = this.renderer.createElement('span');
      this.renderer.addClass(wordSpan, 'mx-1');
      
      // Create span elements for each character
      for (let i = 0; i < word.length; i++) {
        const charSpan = this.renderer.createElement('span');
        this.renderer.setProperty(charSpan, 'textContent', word[i]);
        this.renderer.appendChild(wordSpan, charSpan);
      }
      
      // Add space after word (except for the last word)
      if (wordIndex < words.length - 1) {
        const spaceSpan = this.renderer.createElement('span');
        this.renderer.setProperty(spaceSpan, 'textContent', ' ');
        this.renderer.appendChild(wordSpan, spaceSpan);
      }
      
      this.renderer.appendChild(textDisplayElement, wordSpan);
      this.wordElements.push(wordSpan);
    });
    
    // Highlight the first character and add cursor
    if (this.wordElements.length > 0 && this.wordElements[0].firstChild) {
      const firstChar = this.wordElements[0].firstChild as HTMLElement;
      this.renderer.addClass(firstChar, 'text-yellow-500');
      this.renderer.addClass(firstChar, 'cursor-indicator');
      this.isCursorVisible = true;
    }
  }
  
  startTimer(): void {
    this.timer = setInterval(() => {
      this.timeLeft--;
      
      // Update WPM calculation
      this.calculateWPM();
      
      if (this.timeLeft <= 0) {
        this.endTest();
      }
    }, 1000);
  }
  
  processUserInput(event: KeyboardEvent): void {
    // Ignore modifier keys
    if (event.key === 'Shift' || event.key === 'Control' || event.key === 'Alt' || 
        event.key === 'Meta' || event.key === 'CapsLock') {
      return;
    }
    
    // Handle backspace
    if (event.key === 'Backspace') {
      // Prevent going back to previous words
      if (this.currentCharIndex > 0) {
        this.currentCharIndex--;
        this.updateCharDisplay(this.currentWordIndex, this.currentCharIndex, '');
      }
      return;
    }
    
    // Get the current word and character
    const currentWord = this.words[this.currentWordIndex];
    const expectedChar = this.currentCharIndex < currentWord.length ? 
                        currentWord[this.currentCharIndex] : 
                        (this.currentCharIndex === currentWord.length ? ' ' : null);
    
    // If we're at the end of the text, do nothing
    if (this.currentWordIndex >= this.words.length) {
      this.endTest();
      return;
    }
    
    // Process the typed character
    if (expectedChar !== null) {
      const isCorrect = event.key === expectedChar;
      
      // Update statistics
      this.totalTypedChars++;
      if (isCorrect) {
        this.correctChars++;
      } else {
        this.incorrectChars++;
      }
      
      // Update accuracy
      this.accuracy = Math.round((this.correctChars / this.totalTypedChars) * 100);
      
      // Update display
      this.updateCharDisplay(this.currentWordIndex, this.currentCharIndex, event.key);
      
      // Move to next character
      this.currentCharIndex++;
      
      // If we're at the end of a word and pressed space, move to the next word
      if (this.currentCharIndex > currentWord.length && event.key === ' ') {
        this.currentWordIndex++;
        this.currentCharIndex = 0;
        
        // Highlight the first character of the next word
        if (this.currentWordIndex < this.words.length && 
            this.wordElements[this.currentWordIndex] && 
            this.wordElements[this.currentWordIndex].firstChild) {
          const nextChar = this.wordElements[this.currentWordIndex].firstChild as HTMLElement;
          this.renderer.addClass(nextChar, 'text-yellow-500');
          this.renderer.addClass(nextChar, 'cursor-indicator');
          this.isCursorVisible = true;
        }
      }
    }
  }
  
  updateCharDisplay(wordIndex: number, charIndex: number, typedChar: string): void {
    if (wordIndex >= this.wordElements.length) return;
    
    const wordElement = this.wordElements[wordIndex];
    const charElements = Array.from(wordElement.children);
    
    if (charIndex >= charElements.length) return;
    
    const charElement = charElements[charIndex] as HTMLElement;
    
    // Remove previous highlighting and cursor
    this.renderer.removeClass(charElement, 'text-yellow-500');
    this.renderer.removeClass(charElement, 'text-green-500');
    this.renderer.removeClass(charElement, 'text-red-500');
    this.renderer.removeClass(charElement, 'bg-red-800');
    this.renderer.removeClass(charElement, 'cursor-indicator');
    
    // Add appropriate styling based on correctness
    if (typedChar === '') {
      // Backspace was pressed, reset to default
      this.renderer.addClass(charElement, 'text-gray-400');
      
      // Highlight the current character
      this.renderer.addClass(charElement, 'text-yellow-500');
      this.renderer.addClass(charElement, 'cursor-indicator');
      this.isCursorVisible = true;
    } else {
      const expectedChar = this.words[wordIndex][charIndex] || ' ';
      
      if (typedChar === expectedChar) {
        // Correct character
        this.renderer.addClass(charElement, 'text-green-500');
      } else {
        // Incorrect character
        this.renderer.addClass(charElement, 'text-red-500');
        this.renderer.addClass(charElement, 'bg-red-800');
      }
      
      // Highlight the next character if it exists
      if (charIndex + 1 < charElements.length) {
        const nextCharElement = charElements[charIndex + 1] as HTMLElement;
        this.renderer.addClass(nextCharElement, 'text-yellow-500');
        this.renderer.addClass(nextCharElement, 'cursor-indicator');
        this.isCursorVisible = true;
      }
    }
  }
  
  calculateWPM(): void {
    // WPM = (characters typed / 5) / time in minutes
    const timeElapsedMinutes = (this.selectedTime - this.timeLeft) / 60;
    if (timeElapsedMinutes > 0) {
      // Use correct characters for WPM calculation
      this.wpm = Math.round((this.correctChars / 5) / timeElapsedMinutes);
    }
  }
  
  endTest(): void {
    // Clear the timer
    this.clearIntervals();
    
    // Update the test state
    this.isTestActive = false;
    this.isTestComplete = true;
    this.timeLeft = 0;
    
    // Final WPM calculation
    this.calculateWPM();
  }
  
  restartTest(): void {
    this.resetTest();
  }
}
