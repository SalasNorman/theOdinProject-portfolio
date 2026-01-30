let humanScore = 0;
let computerScore = 0;
let humanChoice = "";
let computerChoice = "";
let result = "";
let run5Times = 1;

const history = document.querySelector(".history");

let comScore = document.querySelector(".com");
let playerScore = document.querySelector(".player");

const chooseButton = document.querySelector(".choose-button");

const resultDisplay = document.querySelector(".title-play");

// Computer Input
function getComputerChoice() {
  let randomNum = Math.floor(Math.random() * 3 + 1);
  if (randomNum === 1) {
    computerChoice = "ROCK";
  } else if (randomNum === 2) {
    computerChoice = "PAPER";
  } else {
    computerChoice = "SCISSORS";
  }
}

// Human vs Computer
function playRound() {
  humanChoice = humanChoice.toUpperCase();
  if (
    (humanChoice === "ROCK" && computerChoice === "SCISSORS") ||
    (humanChoice === "PAPER" && computerChoice === "ROCK") ||
    (humanChoice === "SCISSORS" && computerChoice === "PAPER")
  ) {
    playerScore.textContent = humanScore += 1;
    addHistory("WIN");
  } else if (
    (humanChoice === "ROCK" && computerChoice === "ROCK") ||
    (humanChoice === "PAPER" && computerChoice === "PAPER") ||
    (humanChoice === "SCISSORS" && computerChoice === "SCISSORS")
  ) {
    addHistory("DRAW");
  } else {
    comScore.textContent = computerScore += 1;
    addHistory("LOSS");
  }
}

// History
function addHistory(result) {
  let addHist = document.createElement("li");
  addHist.textContent = `${result}: ${humanChoice} vs ${computerChoice}`;
  history.appendChild(addHist);
}

// run 5 times then show result
function result5round() {
  let resulText = "";
  if (run5Times === 5) {
    if (humanScore > computerScore) {
      resultDisplay.textContent = `YOU WIN!`;
    } else if (humanScore < computerScore) {
      resultDisplay.textContent = `YOU LOSE!`;
    } else {
      resultDisplay.textContent = `BOTH WINS!`;
    }

    resultDisplay.classList.add("text-design");


    while (chooseButton.firstChild) {
      chooseButton.removeChild(chooseButton.firstChild);
    }
    let playAgain = document.createElement("button");
    playAgain.textContent = "Play Again";
    playAgain.style.width = "240px";

    chooseButton.appendChild(playAgain);
    playAgain.addEventListener("click", () => {
      window.location.reload();
    });
  }
}
// play the game
function playGame() {
  let computerPlay = getComputerChoice;
  playRound(computerPlay());
  result5round();
}

// human Input
chooseButton.addEventListener("click", (event) => {
  if (event.target.tagName === "BUTTON") {
    // console.history(event.target.outerHTML);
    // console.history(event.target.textContent);
    humanChoice = event.target.textContent;
    playGame();
    run5Times++;
  }
});
