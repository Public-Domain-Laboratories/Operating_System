JavaScript should be asynchronous and then inside asynchronous functions should synchronous functions be used.
If you want to wait for another asynchronous function then use promises


A delay inside asynchronous functions can be achieved via promises and settimeout.
```js
function delay(n) {  
  n = n || 2000;
  return new Promise(done => {
    setTimeout(() => {
      done();
    }, n);
  });
}
```

https://blog.praveen.science/right-way-of-delaying-execution-synchronously-in-javascript-without-using-loops-or-timeouts/


Website information should only update when user is looking at webpage.
Everything else is a special case.
