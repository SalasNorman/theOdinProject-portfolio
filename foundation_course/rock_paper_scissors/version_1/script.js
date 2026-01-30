let humanScore = 0;
let computerScore = 0;
// let humanChoice = "";
// let computerChoice = "";

// Computer Input
function getComputerChoice() {
  let randomNum = Math.floor(Math.random() * 3 + 1);
  let computerChoice = "";
  if (randomNum === 1) {
    computerChoice = "ROCK";
  } else if (randomNum === 2) {
    computerChoice = "PAPER";
  } else {
    computerChoice = "SCISSORS";
  }
  return computerChoice;
}

// Human Input
function getHumanChoice() {
  let humanChoice = prompt("Choose one: \nROCK, PAPER, SCISSORS");
  return humanChoice;
}

// Human vs Computer
function playRound(humanChoice, computerChoice) {
  humanChoice = humanChoice.toUpperCase();
  if (
    (humanChoice === "ROCK" && computerChoice === "SCISSORS") ||
    (humanChoice === "PAPER" && computerChoice === "ROCK") ||
    (humanChoice === "SCISSORS" && computerChoice === "PAPER")
  ) {
    alert(humanChoice + " beat " + computerChoice + "\nYou WIN!");
    humanScore += 1;
  } else if (
    (humanChoice === "ROCK" && computerChoice === "ROCK") ||
    (humanChoice === "PAPER" && computerChoice === "PAPER") ||
    (humanChoice === "SCISSORS" && computerChoice === "SCISSORS")
  ) {
    alert(humanChoice + " vs " + computerChoice + "\na TIE!");
  } else {
    alert(computerChoice + " beat " + humanChoice + "\nYou lose! ");
    computerScore += 1;
  }
}

// play the game
function playGame() {
  alert("Welcome to ROCK-PAPER-SCISSORS \nPlay 5 Round");

  for (let i = 1; i <= 5; i++) {
    let humanPlay = getHumanChoice;
    let computerPlay = getComputerChoice;
    playRound(humanPlay(), computerPlay());
  }

  if (humanScore > computerScore) {
    alert(
      "You: " + humanScore + " Com: " + computerScore + "\nYour the WINNER!"
    );
  } else if (humanScore < computerScore) {
    alert(
      "You: " +
        humanScore +
        " Com: " +
        computerScore +
        "\nYou MOTHERF**KING LOSER!"
    );
  } else {
    alert(
      "You: " + humanScore + " Com: " + computerScore + "\na TIE! \nTRY AGAIN"
    );
  }
}

playGame();
