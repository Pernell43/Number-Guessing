# Number-Guessing

This is a simple number guessing game implemented in PowerShell. The game allows users to choose a difficulty level, make guesses, and keeps track of their attempts. At the end of the game, user statistics are saved to a file for future reference and ranking.

## How to Play
1. Select a Difficulty:
   - When the game starts, you are prompted to choose between three difficulty levels:
       - Easy: Guess a number between 1 and 100.
       - Medium: Guess a number between 1 and 10,000.
       - Hard: Guess a number between 1 and 1,000,000.
2. Make Your Guesses:
   - After selecting a difficulty, you will begin making guesses. The game will provide feedback:
       - If your guess is too low, you will be prompted to guess a higher number.
       - If your guess is too high, you will be prompted to guess a lower number.
       - Keep guessing until you find the correct number.
3. User Information:
   - After guessing the correct number, the game will prompt you to enter a username.
   - It will display how many guesses it took to find the number.
4. Leaderboard:
   - The game stores each player’s score and attempts in a text file, named according to the selected difficulty level:
       - numberGuessRankingListEASY.txt
       - numberGuessRankingListMEDIUM.txt
       - numberGuessRankingListHARD.txt
   - The leaderboard stores the following information:
       - Username
       - Number to guess
       - Number of guesses
       - Difficulty

## Features
- Multiple Difficulty Levels: Choose between Easy, Medium, and Hard modes to suit your challenge preference.
- Guess Feedback: The game provides feedback on whether your guess is too high or too low.
- Score Tracking: Your number of attempts is tracked and saved to a leaderboard file for future reference.
- Leaderboard: Keeps track of users, their guesses, and their results in a file, which can be viewed after the game.

## Requirements
- PowerShell: This script is written in PowerShell, and it should be run on a system where PowerShell is available (Windows or PowerShell Core for cross-platform compatibility).

## How to Run the Game
1. Download the script to a directory of your choice.
2. Open PowerShell and navigate to the directory where the script is saved.
3. Run the script using the following command: ./numberguess.ps1
4. Follow the prompts to play the game!

## Files Generated
Depending on the difficulty chosen, the game will generate or update a leaderboard file in the directory of the script:
- numberGuessRankingListEASY.txt
- numberGuessRankingListMEDIUM.txt
- numberGuessRankingListHARD.txt

These files contain a list of users, their guesses, and their performance on each difficulty level.

## Example:
Welcome to the number guessing game, Choose a difficulty Easy, Medium or Hard Mode (type 'easy', 'medium' or 'hard'): easy

Easy Mode Chosen, Pick between 1 and 100

Guess a number: 50

User guessed: 50

Wrong Number, higher

Guess a number: 75

User guessed: 75

Wrong Number, lower

Guess a number: 63

User guessed: 63

Congratulations on guessing the number

Provide a username: JohnDoe

JohnDoe found the number in 3 guesses with the Difficulty being EASY

Records:

Username    | Number to Guess    | Amount of Guesses | Difficulty

JohnDoe     | 63                 | 3                 | EASY


# Author
Developed by Pernell Louis-Pierre
