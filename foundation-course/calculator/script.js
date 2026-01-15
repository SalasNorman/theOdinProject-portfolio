const input = document.querySelector("#input");
const container = document.querySelector("#container");

container.addEventListener("click", (event) => {
  if (
    event.target.id !== "container" &&
    event.target.className.includes("row") === false &&
    event.target.id !== "input"
  ) {
    currentInput = event.target.textContent;
    checkCurrentInput(currentInput);
  }
});

let currentInput = "";
let input1 = "";
let input2 = "";
let operator = "";
let isNextInput = false;
let result = "";

function checkCurrentInput(currentInput) {
  let isSymbol = isNaN(parseInt(currentInput));

  if (isSymbol === true) {
    if (currentInput === "C") {
      clearInput();
    } else if (currentInput === "=") {
      operate();
      isNextInput = false;
      operator = "";
    } else {
      // Arithmetic
      if (input2 === "") {
        // 1+_
        operator = currentInput;
        isNextInput = true;
      } else if (input2 !== "") {
        // 1+1
        operate();
        operator = currentInput;
      }
    }
  } else if (isSymbol === false) {
    // Numbers
    if (isNextInput === false) {
      input1 = input1.concat(currentInput);
    } else if (isNextInput === true) {
      input2 = input2.concat(currentInput);
    }
  }
  displayResult();
}

function operate() {
  if (operator === "+") {
    input1 = Number(input1) + Number(input2);
  } else if (operator === "-") {
    input1 = Number(input1) - Number(input2);
  } else if (operator === "x") {
    input1 = Number(input1) * Number(input2);
  } else if (operator === "÷") {
    input1 = Number(input1) / Number(input2);
  }
  input1 = String(input1);
  input2 = "";
}

function displayResult() {
  input.textContent = `${input1}${operator}${input2}`;
}

function clearInput() {
  input1 = "";
  input2 = "";
  operator = "";
  isNextInput = false;
}
