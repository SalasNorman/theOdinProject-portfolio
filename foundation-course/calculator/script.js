const input = document.querySelector("#input");
const container = document.querySelector("#container");

let currentInput = "";
let input1 = "";
let input2 = "";
let operator = "";
let nextInput = false;

container.addEventListener("click", (event) => {
  if (
    event.target.id !== "container" &&
    event.target.className.includes("row") === false
  ) {
    currentInput = event.target.textContent;
    // input.textContent = input1 + input2 + operator;
    checkInput(currentInput);
  }
});

function checkInput(currentInput) {
  if (Number.isNaN(parseInt(currentInput))) {
    if (input1 !== "") {
      nextInput = true;
      checkOperator(currentInput);
    }
  } else if (nextInput === true) {
    input2 = input2.concat(currentInput);
  } else {
    input1 = input1.concat(currentInput);
  }
  console.log("1: " + input1);
  console.log("2: " + input2);
  console.log("op: " + operator);
}

function checkOperator(currentInput) {
  if (currentInput === "+") {
    operator = "+";
  } else if (currentInput === "-") {
    operator = "-";
  } else if (currentInput === "x") {
    operator = "*";
  } else if (currentInput === "÷") {
    operator = "/";
  } else if (currentInput === "=") {
    operate();
  } else if (currentInput === "C") {
    input1 = "";
    input2 = "";
    operator = "";
    nextInput = false;
    input.textContent = "";
  }
}

function operate() {
  if (operator === "+") {
    input1 = Number(input1) + Number(input2);
  } else if (operator === "-") {
    input1 = Number(input1) - Number(input2);
  } else if (operator === "*") {
    input1 = Number(input1) * Number(input2);
  } else if (operator === "/") {
    input1 = Number(input1) / Number(input2);
  }
  input.textContent = input1;
  input2 = "";
}
