package com.gn.run;

import java.util.Random;
import java.util.Scanner;

public class GuessingNumberApplication {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        Random random = new Random();
        int numberToGuess = random.nextInt(10) + 1;
        int attempts = 0;

        while (attempts < 3) {
            System.out.print("Guess the Number:");
            int guess = scanner.nextInt();
            attempts++;

            if (guess < numberToGuess) {
                System.out.println("Too low! Try again");
            } else if (guess > numberToGuess) {
                System.out.println("Too high! Try again");
            } else {
                System.out.println("Congratulations! You guessed the number");
                break;
            }
        }
        if (attempts == 3) {
            System.out.println("Sorry the number to guess is : " + numberToGuess + " , better luck next time!!!");
        }
        scanner.close();
    }
}
