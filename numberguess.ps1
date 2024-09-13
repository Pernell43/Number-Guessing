$GuessCount = 0;
$Username = "";
$UserGuess;
$InputRangeEasy = 1..100;
$InputRangeMedium = 1..10000;
$InputRangeHard = 1..1000000;
$Difficulty = "";
#Write-Output create future usable output, use Write-Host for prints

Write-Host "Welcome to the number guessing game, Choose a difficulty"
$UserChoice = Read-Host -Prompt "Easy, Medium or Hard Mode (type 'easy', 'medium' or 'hard')";
$UserChoice = $UserChoice.ToUpper();

while ($UserChoice -ne 'EASY' -and $UserChoice -ne 'MEDIUM' -and $UserChoice -ne 'HARD'){
			$UserChoice = Read-Host -Prompt "Invalid Choice... Type easy, medium or hard: ";
			$UserChoice = $UserChoice.ToUpper();
}

if ($UserChoice -eq 'EASY') {
	Write-Host "Easy Mode Chosen, Pick between 1 and 100";
	$Difficulty = "EASY";
	$numberToGuess = Get-Random -InputObject $InputRangeEasy;
} elseif ($UserChoice -eq 'MEDIUM') {
	Write-Host "Medium Mode Chosen, Pick between 1 and 10000";
	$Difficulty = "MEDIUM";
	$numberToGuess = Get-Random -InputObject $InputRangeMedium;
} elseif ($UserChoice -eq 'HARD') {
	Write-Host "Hard Mode Chosen, Pick between 1 and 1000000";
	$Difficulty = "HARD";
	$numberToGuess = Get-Random -InputObject $InputRangeHard;
}
#Write-Host "Number to guess: $numberToGuess" #For testing

while ($UserGuess -ne $numberToGuess) { #Need to modify, there are some glitches, potential decimals, prevent users from choosing numbers outside of range
	$UserGuess = Read-Host -Prompt "Guess a number"
	Write-Host "User guessed: $UserGuess"
	if ($UserGuess -lt $numberToGuess) {
		Write-Host "Wrong Number, higher"
		Write-Host ""
		$GuessCount++
	} elseif ($UserGuess -gt $numberToGuess) {
		Write-Host "Wrong Number, lower"
		Write-Host ""
		$GuessCount++
	} else {
		Write-Host "Congratulations on guessing the number"
	}
	$GuessCount++
}

$Username = Read-Host -Prompt "Provide a username"
if ($GuessCount -lt 2) {
	Write-Host "$Username found the number in 1 guess! Good Job!"
} else {
	Write-Host "$Username found the number in $GuessCount guesses with the Difficulty being $Difficulty"
}

#variables necessary: $GuessCount, $Username, $Difficulty, $numberToGuess
#make a ranking list. Use numberGuessRankingList$Difficulty.txt pipe Sort to sort the winners
$filepath = "C:\Users\g-lvussec4\scripts"
$filename = 'numberGuessRankingList' + $Difficulty + '.txt'
if ((Get-Item $filename).length -eq 0 -or -not(Get-Item $filename)) { #this part is semi-working file being created, not read
	Write-Host "The file is empty"
	Add-Content $filename "Username`t| Number to Guess`t| Amount of Guesses`t| Difficulty`t"
	Add-Content $filename -Encoding String $Username"`t|"$numberToGuess"`t|"$GuessCount"`t|"$Difficulty
} else {
	Write-Host "File name has initial heading necessary, adding user record"
	Add-Content $filename -Encoding String $Username"`t|"$numberToGuess"`t|"$GuessCount"`t|"$Difficulty
	#formatted, but not to the original header, Data does go in normally though.
}
Write-Host ""
Write-Host "Records:"
Write-Host ""
Get-Content $filename
