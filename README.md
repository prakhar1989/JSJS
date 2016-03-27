JSJS
====

> A strongly typed language for the web.

Read the [proposal](http://prakhar.me/JSJS/) or track the status of the project [here](https://github.com/prakhar1989/JSJS/wiki/Progress-Tracker).

----

##### Syntax

```scala
val isHappy? : bool = true;

val pi = 3.14159;

val sq = /\(x: num, y: num): num => x * y;

val gcd = /\(a: num, b: num): num => {
   if a == b then a
   else {
      if a > b
      then gcd((a - b), b)
      else gcd((b - a), a);
   };
};

// generics!
val filter = /\[T](pred: (T) -> bool, xs: list T): list T => {
  if isempty(xs) then xs
  else {
    if pred(hd(xs))
      then hd(xs) :: filter(pred, tl(xs))
      else filter(pred, tl(xs));
  };
};

val sqrs = List.map(/\(x:num): num => x * x; , [1,2,3,4]);

val people : <string: <string: num>> = {
  "foo" : {"a" : 10},
  "goo" : {"b" : 40},
  "hoo" : {"c" : 2}
};
```

----

##### Build
```shell
$ make clean
$ make
$ ./jsjs.out examples/operators.jsjs
```

#### Generate JS
```shell
$ make 
$ ./jsjs.out helloworld.jsjs
$ make js filename=awesome.js
```
