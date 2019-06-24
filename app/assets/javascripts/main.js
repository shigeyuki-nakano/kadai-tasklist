const sayHello = "Hello World";

console.log(sayHello);

const promise = new Promise((resolve) => {
  setTimeout(() => {
    // resolve()を呼び出すと、Promiseの処理が終了
    resolve("任意の値");
  }, 1000);
});

// then()メソッドで続く処理を記述できる
promise.then((value) => {
  console.log(value);
});
