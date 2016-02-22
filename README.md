JSJS
====

> A strongly typed language for the web.

Read the [proposal](http://prakhar.me/JSJS/) or track the status of the project [here](https://github.com/prakhar1989/JSJS/wiki/Progress-Tracker).

----

##### Build
```shell
$ make clean
$ make
$ ./jsjs.out examples/operators.jsjs
```

##### Tests
To run tests, you need the [OUnit](http://ounit.forge.ocamlcore.org/) library. Run `opam install ounit` to get it.
```
$ make
$ make test
$ npm test
```

##### Syntax

```scala
val isHappy? : bool = true;
val pi : num = 3.14159;

val sq: (num, num) -> num = /\(x, y) => x * y;

def gcd (a: num, b: num) : num = {
   if a == b then { a; }
   else {
      if a > b
      then { gcd((a - b), b); }
      else { gcd((b - a), a); };
   };
}

val people : <string: <string: num>> = Map(
  "foo" : Map("a" : 10),
  "goo" : Map("b" : 40),
  "hoo" : Map("c" : 2)
);
```
