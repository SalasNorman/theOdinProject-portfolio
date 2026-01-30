const container = document.querySelector(".container");
const gridSizeLabel = document.querySelector("#grid-size-display");
const gridSizeInput = document.querySelector("#grid-size");
let colorPick = document.querySelector("#color-picker");
let brushMode = document.querySelector("#brush-mode");
let eraserMode = document.querySelector("#eraser-mode");
let clearCanvas = document.querySelector("#clear-canvas");
let deviceType = document.querySelector("#device-type");

let defaultGridSize = 16;
colorPick.value = `hsla(0, 0%, 0%, 0.10)`;
gridSizeLabel.textContent = `${defaultGridSize} x ${defaultGridSize}`;
let boxHW = 0;
let containerHW = 0;

// grid slider
function displayGridSize() {
  gridSizeInput.addEventListener("input", (event) => {
    defaultGridSize = event.target.value;
    gridSizeLabel.textContent = `${defaultGridSize} x ${defaultGridSize}`;
    resetGrid();
  });
}

function resetGrid() {
  while (container.firstChild) {
    container.removeChild(container.firstChild);
  }
  generateGrid();
}

function generateGrid() {
  let gridSize = defaultGridSize * defaultGridSize;
  if (deviceType.value === "Mobile") {
    containerHW = 320;
  } else if (deviceType.value === "Desktop") {
    containerHW = 500;
  }
  container.style.height = `${containerHW}px`;
  container.style.width = `${containerHW}px`;
  for (let i = 1; i <= gridSize; i++) {
    const grid = document.createElement("div");
    grid.classList.add("box");
    boxHW = containerHW / defaultGridSize;
    grid.style.height = `${boxHW}px`;
    grid.style.width = `${boxHW}px`;
    container.appendChild(grid);
  }
}

// brushing
container.addEventListener("mouseover", (event) => {
  let box = event.target;
  if (
    box.className !== "container" &&
    colorPick.value !== "" &&
    brushMode.value === "ON"
  ) {
    box.style.backgroundColor = `${colorPick.value}`;
  } else if (eraserMode.value === "ON") {
    box.style.backgroundColor = ``;
  }
});

brushMode.addEventListener("click", (event) => {
  toggle(brushMode, eraserMode);
});

eraserMode.addEventListener("click", (event) => {
  toggle(eraserMode, brushMode);
});

function toggle(btn1, btn2) {
  if (btn1.value === "OFF") {
    btn1.value = "ON";
    btn2.value = "OFF";
  } else if (btn1.value === "ON") {
    btn1.value = "OFF";
    btn1.value = "ON";
  }
}

deviceType.addEventListener("click", (event) => {
    if (deviceType.value === "Desktop") {
      deviceType.value = "Mobile";
    } else if (deviceType.value === "Mobile") {
      deviceType.value = "Desktop";
    }
    resetGrid();
});

clearCanvas.addEventListener("click", (event) => {
  resetGrid();
});

displayGridSize();
generateGrid();
console.log(deviceType.value)
