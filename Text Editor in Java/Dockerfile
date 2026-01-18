FROM eclipse-temurin:17-jdk

RUN apt-get update && \
    apt-get install -y xvfb && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY . .

RUN javac editor.java

CMD ["xvfb-run", "java", "editor"]
