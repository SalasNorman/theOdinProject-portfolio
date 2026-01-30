# Rock Paper Scissors (JavaScript)

A simple **Rock–Paper–Scissors** game built with vanilla JavaScript.
The game runs in the browser using `prompt` and `alert` dialogs and plays **5 rounds** between a human player and the computer.

This project was created as a **project exercise from [The Odin Project](https://www.theodinproject.com/)** to practice JavaScript fundamentals.

---

## 📁 Project Structure

```
rock-paper-scissor/
├── index.html   # Open this file in a browser to run the game
├── script.js    # Game logic
└── README.md    # Project documentation
```

---

## 🎮 How to Play

1. Open `index.html` in any modern web browser.
2. A prompt will ask you to choose one of the following:

   * `ROCK`
   * `PAPER`
   * `SCISSORS`
3. The computer randomly selects its choice.
4. The winner of each round is shown using an alert.
5. The game runs for **5 rounds**.
6. After 5 rounds, the final score is displayed and the overall winner is announced.

---

## ⚙️ Game Rules

* **Rock beats Scissors**
* **Paper beats Rock**
* **Scissors beats Paper**
* Same choices result in a **tie**

---

## 🧠 How It Works

* The computer’s choice is generated randomly using `Math.random()`.
* The human player inputs their choice using `prompt()`.
* Each round compares the two choices and updates the score.
* Scores are tracked using:

  ```js
  let humanScore = 0;
  let computerScore = 0;
  ```
* After 5 rounds, the final winner is determined.

---

## 🚀 Technologies Used

* HTML
* JavaScript (Vanilla)

---

## 📌 Notes

* Input is case-insensitive (converted to uppercase internally).
* The game uses browser dialogs (`alert` and `prompt`), so it must be run in a browser.
* No external libraries or frameworks are required.

---

## 🛠️ Possible Improvements

* Replace `prompt` and `alert` with buttons and UI elements
* Add input validation for invalid choices
* Display live scores on the page
* Allow replay without refreshing the page