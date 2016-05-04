# ![img](logo.png)

> A strongly typed language for the web.

##### Syntax
```scala
val gcd = /\(a, b) => {
  if a == b then a
  else {
    if a > b
    then gcd((a - b), b)
    else gcd((b - a), a);
  };
};

print_num(gcd(12, 8));

// support for optional types
val pow = /\(base, exp) => {
  val aux = /\(accum, e): num => {
    if (e == 1) then accum
    else aux (accum * base, e - 1);
  };
  aux(base, exp);
};

val chess_squares = pow(8, 2);

print_string("Total number of squares on a chessboard: ");
print_num(chess_squares);
```

#### Build
```shell
$ make clean
$ make
```

#### Compile
```shell
$ ./jsjs.out examples/list.jsjs
$ node out.js
```

#### Test
```shell
$ make test
$ make run-test
```
