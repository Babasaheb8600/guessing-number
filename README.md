# 🎯 Guessing Number Game
A simple Java-based game that demonstrates how to build, package, and run a Java application inside a Docker container using OpenJDK 17.

## 🚀 Overview

The Guessing Number project is a simple console-based Java game that generates a random number and asks the user to guess it.
It is designed as a learning project to demonstrate:
- ✅ Java programming basics
- ✅ Maven project management
- ✅ Building .jar artifacts
- ✅ Containerizing Java apps using Docker and OpenJDK 17

## 📂 Project Structure
```
$USER_HOME/
└── workspace/
    └── guessing-number/
        ├── src/
        │   └── main/
        │       └── java/
        │           └── com/
        │               └── gn/
        │                   └── run/
        │                       └── GuessingNumberApplication.java
        ├── pom.xml
        ├── target/
        │   ├── guessing-number-1.0.jar
        │   └── classes/
        │       └── com/
        │           └── gn/
        │               └── run/
        │                   └── GuessingNumberApplication.class
        └── Dockerfile
```

## 🌟 Features

- 🎲 Random number guessing game

- 🧠 Simple logic and console interaction

- 🧰 Built using Java 17 and Maven

- 🐳 Dockerized with OpenJDK 17

- 🧾 Fully portable and lightweight

## 🐳 Run with Docker
1. Clone this repository (if you haven't already):

   ```bash
   git clone https://github.com/your-username/your-repo-name.git
   ```

2. Navigate to the project directory:

   ```bash
   cd your-repo-name
   ```
3. Build the Java project using Maven
   ```bash
   mvn clean verify
   ```
4. Build the Docker image
   ```bash
   docker build -t guess-number:1.0 .
   ```
5. Run the Container
   ```bash
   docker run -it guess-number:1.0
   ```
Expected output:
  - Guess the Number: 1
    Too low! Try again
  - Guess the Number: 2
   Congratulations! You guessed the number

















