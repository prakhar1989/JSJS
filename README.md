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
$ ./test/run.out
```
