# Number-Guessing

This is a simple number guessing game implemented in PowerShell. The game allows users to choose a difficulty level, make guesses, and keeps track of their attempts. At the end of the game, user statistics are saved to a file for future reference and ranking.

## How to Play
1. Select a Difficulty:
2. Make Your Guesses:
3. User Information:
4. Leaderboard

## Features
- Multiple Difficulty Levels:
- Guess Feedback: 
- Score Tracking:
- Leaderboard:

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
Welcome to the number guessing game, Choose a difficulty
Easy, Medium or Hard Mode (type 'easy', 'medium' or 'hard'): easy
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
