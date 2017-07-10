import Y from "y-combinator";

const assert = (expr, info) => {
    if (!expr) {
        console.error(`Assertion failed: ${info}`);
    }
}

const almostFactorial = f => n => (n === 0) ? 1 : f(n - 1) * n;

// const partFactorial = self => n => (n === 0) ? 1 : self(self)(n - 1) * n;

const factorial = Y(almostFactorial);

assert(factorial(0) === 1);
assert(factorial(1) === 1);
assert(factorial(2) === 2);
assert(factorial(3) === 6);
assert(factorial(4) === 24);
assert(factorial(5) === 120);
assert(factorial(10) === 3628800);