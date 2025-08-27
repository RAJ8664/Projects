<?php

/**
 * Generate a 6-digit numeric verification code.
 */
function generateVerificationCode(): string
{
    return str_pad(strval(random_int(0, 999999)), 6, '0', STR_PAD_LEFT);
}

/**
 * Send a verification code to an email.
 */
function sendVerificationEmail(string $email, string $code): bool
{
    $subject = 'Your Verification Code';
    $message = "<p>Your verification code is: <strong>$code</strong></p>";
    $headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html; charset=UTF-8\r\n";
    $headers .= "From: no-reply@example.com\r\n";
    return mail($email, $subject, $message, $headers);
}

/**
 * Register an email by storing it in a file.
 */
function registerEmail(string $email): bool
{
    $file = __DIR__ . '/registered_emails.txt';
   
    /* Iam assuming that the file --> registered_emails.txt will always exists */
    /* if not then create it using touch command */

    /* Skip the Email if it already exists */
    $emails = file($file, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    $email = strtolower(trim($email));
    if (in_array($email, $emails)) {
        echo "Email already exists";
        return false;
    }
    /* If the Email is not present then add it to the file */
    file_put_contents($file, $email . PHP_EOL, FILE_APPEND | LOCK_EX);
    return true;
}

/**
 * Unsubscribe an email by removing it from the list.
 */
function unsubscribeEmail(string $email): bool
{
    $file = __DIR__ . '/registered_emails.txt';
    $emails = file($file, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    $emails = array_filter($emails, fn($e) => trim($e) !== trim($email));
    file_put_contents($file, implode(PHP_EOL, $emails) . PHP_EOL);
    return true;
}

/**
 * Fetch random XKCD comic and format data as HTML.
 */
function fetchAndFormatXKCDData(): string
{
    // TODO: Implement this function
    $randomId = rand(1, 2000); /* I Just Picked a random number --> hope it finds a comic */
    $json = file_get_contents("https://xkcd.com/$randomId/info.0.json");
    $data = json_decode($json, true);
    $html = "<h2>XKCD Comic</h2>";
    $html .= "<img src=\"{$data['img']}\" alt=\"XKCD Comic\">";
    $html .= "<p><a href='http://localhost:8080/unsubscribe.php' id='unsubscribe-button'>Unsubscribe</a></p>";
    return $html;
}

/**
 * Send the formatted XKCD updates to registered emails.
 */
function sendXKCDUpdatesToSubscribers(): void
{
    $file = __DIR__ . '/registered_emails.txt';
    $emails = file($file, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
    $subject = 'Your XKCD Comic';
    $content = fetchAndFormatXKCDData();
    foreach ($emails as $email) {
        sendComicMail($email, $subject, $content);
    }
}

/* Custom Functions */
function verifyCode($email, $code) : bool
{
    return isset($_SESSION['codes'][$email]) && $_SESSION['codes'][$email] === $code;
}
function sendUnsubscribeConfirmationEmail(string $email, string $code): bool
{
    $subject = 'Confirm Un-subscription';
    $message = "<p>To confirm un-subscription, use this code: <strong>$code</strong></p>";
    $headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html; charset=UTF-8\r\n";
    $headers .= "From: no-reply@example.com\r\n";
    return mail($email, $subject, $message, $headers);
}
function sendComicMail($email, $subject, $content) : bool
{
    $headers = "MIME-Version: 1.0\r\n";
    $headers .= "Content-type: text/html; charset=UTF-8\r\n";
    $headers .= "From: no-reply@example.com\r\n";
    return mail($email, $subject, $content, $headers);
}
?>
