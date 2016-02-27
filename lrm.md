---
layout: page
title:  Language Reference Manual
permalink: /lrm/
---

Introduction
===

JSJS is a strongly typed language for the web. Taking inspiration from languages such as OCaml, Scala and TypeScript, JSJS aims to be a pragmatic and a powerful language that can be used to build real-world applications. Since JSJS compiles down to Javascript, it can run both in the browser and on the server (Node.js). While designing the syntax and semantics of the language our goal has been the following - 

- Minimal number of keywords
- Approachable to Javascript users
- Familiar to functional programmers
- Explicit is better than implicit

### Types

Types are at the forefront of JSJS. Every value declaration, functions, and even compound literals need an explicit type definition. This section elaborates more on the different types of data that JSJS supports.

#### Primitive Types
There are four fundamental types or *primitive* types in JSJS.

##### Number
The `num` or the `number` type in JSJS corresponds to the [Number](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Data_structures) type in Javascript.

According to the ECMAScript standard, there is only one number type: the double-precision 64-bit binary format IEEE 754 value (number between -(253 -1) and 253 -1). There is no specific type for integers and hence the same type is used to represent floating-point numbers.

*AST*
```ocaml
type primitiveType = 
  | TNum 
```

##### String
The `string` type in JSJS is used to represent textual data and corresponds to the [String](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String) type in Javascript. It is a set of "elements" of 16-bit unsigned integer values. Each element in the String occupies a position in the String. The first element is at index 0, the next at index 1, and so on. The length of a String is the number of elements in it. 

*AST*
```ocaml
type primitiveType = 
  | TString 
```

##### Boolean
The `bool` type in JSJS represents a logical entity and can have two values: `true`, and `false`.

*AST*
```ocaml
type primitiveType = 
  | TBool 
```

##### Unit
Unit, written `unit`, is a built-in type that has only one value. It is mostly used for functions that causes side effects and have no useful return value.

Unit is also used for interopability with functions in Go that has no return value at all. For example, the JSJS expression below would have the type `string -> unit` in JSJS. 
```scala
val nothing = /\(x: string): unit => print(x)
```
The literal `unit` has the type `unit`.

*AST*
```ocaml
type primitiveType = 
  | TBool 
```

#### Composite Types
There are two primary composite types in JSJS

##### Lists
Like other functional programming languages, Lists are the fundamental data structures in JSJS. They serve as the primary basis of storing one or more related values together. The type signature of a list is `list T` where `T` is one of the other types - either primitive or composite. Here are a few examples of defining list types -
- `list num`
- `list string`
- `list list bool`

Lists in JSJS are homogenous, i.e they can contain only one type of data. A list whose type is declared as `list num` can only store elements of `num` type. Lists can also contain other lists which have a type `list list T`.

*AST*
```ocaml
type primitiveType = 
  | TList of primitiveType
```

##### Maps
Maps is another important data structure in JSJS and is treated as a first-class citizen. Since JSJS compiles down to Javascript where Maps (called objects) are used extremely liberally, Javascript programmers will feel right at home in accessing this useful data structure with as much ease as they are used to. Map types follow a different syntax for declaration: `<T: U>` where `T`is the type of the key and `U` is the type of the value stored in the Map. Example declarations of Maps are - 
```scala
// simple maps
val names : <string: num> = { ... }
val friends : <string: list num> = { ... }

// nested maps
val people : <string: <string: bool>> = { ... }
```
Like lists, Maps in JSJS are homogenous. Like other strongly typed languages, the keys of a map should have the same type and so should the values.

*AST*
```ocaml
type primitiveType = 
  | TMap of primitiveType * primitiveType
```

#### Function Types
Like other values, functions are expressions in JSJS. That means that functions also have types and functions expression also have a function type. The type of a function, is mapping of types from its formal arguments to its return type. Thus a function that takes `n` arguments has the following type signature - `(T1, T2, T3, ... Tn) -> T`.

```scala
// type of a function that takes two arguments
// of type num and returns a bool type.
(num, num) -> bool
```
The type of a function is determined at the time of its declaration. Each formal argument in a function definition should have a type attached followed finally by the return type of the function. 

```scala
// a function declaration with explicit type annotations
val pow : (num, num) -> num = /\(x: num, y: num): num = {
   // ...
}
``` 
Function types in the JSJS compiler are implemented using mutually recursive algebraic data-types.

*AST*
```ocaml
type primitiveType = 
  | ...
and funcType = primitiveType list * primitiveType
;;
```

#### Generic Types
JSJS also supports polymorphic types. Polymorphic function types can contain of type variables. These are like placeholders for the types used when applying the polymorphic function. A type variable has to be defined by an uppercase single letter. 
```scala
val map = /\(f: T -> U, xs: list T): list U => {
 // ...
}
```
*AST*
```ocaml
type primitiveType = 
  | T of char
```

#### Type Declarations
Type annotations of all expressions (except functions) are optional. The type system *infers* the type of the expression from the expression on the right and assigns that type to the val on left. 

*Grammar*
```ocaml
assigns:
  | VAL ID COLON primitive ASSIGN expr       { Assign($2, $4, $6) }
  | VAL ID ASSIGN expr                       { Assign($2, TSome, $4) }
```

*AST*
```ocaml
type expr = 
  | Assign of string * primitiveType * expr 
```
*Examples*
```scala
// explicit type definition
val name : string = "Foobar"; 

// types are optional and count is assigned the `num` type.
val count = 10 + 20;

// wrong type annotations will raise type mismatch errors
val happy? : bool = "string1" ^ " " ^ "string2";

// functions need an explicit type declaration
val square = /\(x: num, y: num): num => x * y;
```

### Types in AST

In conclusion, the types of JSJS are defined in the AST as below - 
{% highlight scala %}
type primitiveType = 
  | T of char
  | TSome
  | TNum 
  | TString 
  | TBool 
  | TUnit 
  | TFun of funcType
  | TList of primitiveType
  | TMap of primitiveType * primitiveType
and funcType = primitiveType list * primitiveType
;;
{% endhighlight %}
