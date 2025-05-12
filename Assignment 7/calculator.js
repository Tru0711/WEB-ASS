let display = document.getElementById('display');
let currentInput = '';
let firstOperand = null;
let operator = '';

function calculate(a, b, operator) {
  let result;
  switch(operator) {
    case '+':
      result = a + b;
      break;
    case '-':
      result = a - b;
      break;
    case '*':
      result = a * b;
      break;
    case '/':
      if (b === 0) {
        result = 'Error: Division by zero';
      } else {
        result = a / b;
      }
      break;
    default:
      result = 'Invalid operator';
  }
  return result;
}

function handleClick(val) {
  switch(val) {
    case 'C':
      currentInput = '';
      firstOperand = null;
      operator = '';
      display.value = '';
      break;
    case '=':
      if (firstOperand !== null && operator) {
        const secondOperand = parseFloat(currentInput);
        const result = calculate(firstOperand, secondOperand, operator);
        display.value = result;
        currentInput = result.toString();
        firstOperand = null;
        operator = '';
      }
      break;
    case '+':
    case '-':
    case '*':
    case '/':
      if (currentInput) {
        firstOperand = parseFloat(currentInput);
        operator = val;
        currentInput = '';
      }
      break;
    default:
      currentInput += val;
      display.value = currentInput;
      break;
  }
}
