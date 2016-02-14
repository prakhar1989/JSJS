JSJS
====


### Docs

```shell
$ make buildocs
```

### Build
```shell
$ make clean
$ make
```

### Run
```
$ ./jsjs.out examples/operators.jsjs
```

### Tests
To run tests, you need the [OUnit](http://ounit.forge.ocamlcore.org/) library. Run `opam install ounit` to get it.
```
$ make
$ make test
$ ./test/run.out
```
