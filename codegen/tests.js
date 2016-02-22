"use strict";

var assert = require('assert');
var ast = require('./jsast');
var es = require('escodegen');

function run(code) {
    return eval(es.generate(code));
}

var gen = es.generate;

describe('Literals', function() {
    it('lits', function () {
      assert.equal(2, run(ast.literal(2)));
      assert.equal("hello", run(ast.literal("hello")));
      assert.equal(true, run(ast.literal(true)));
    });
});

describe('Unary operations', function() {
    it('unop', function () {
      assert.equal(-5, run(ast.unop("-", ast.literal(5))));
      assert.equal(5, run(ast.unop("-", ast.unop("-", ast.literal(5)))));
      assert.equal(!true, run(ast.unop("!", ast.literal(true))));
      assert.equal(false, run(ast.unop("!", ast.literal(true))));
    });
});

describe('Id', function() {
    it('Ids', function () {
      assert.equal('x', gen(ast.id('x')));
    });
});

describe('Binary operations', function() {
    it('simple', function () {
      var expr = ast.binop("+", ast.literal(7), ast.literal(3));
      assert.equal(10, run(expr));
    });
    it('with unop', function () {
      var expr = ast.binop("*", ast.unop("-", ast.literal(7)), ast.literal(3));
      assert.equal(-21, run(expr));
    });
    it('nested', function () {
        var expr = ast.binop("*",
                ast.binop("+", ast.literal(7), ast.literal(3)),
                ast.literal(4))
      assert.equal(40, run(expr));
    });
});

describe('Assigns', function() {
    it('assignment for lits', function () {
      var expr = ast.binop("+", ast.literal(7), ast.literal(3));
      var s1 = gen(ast.assign(ast.id('x'), expr));
      var s2 = gen(ast.id('x'));
      assert.equal(10, eval(s1 + s2));
    });

    it('assignment for ids', function () {
      var expr = ast.binop("+", ast.id('x'), ast.id('y'));
      assert.equal('let z = x + y;', gen(ast.assign(ast.id('z'), expr)));
    });
});

describe('Function Call', function() {
    it('print fn call', function () {
      var a1 = ast.binop("+", ast.literal(4), ast.literal(3));
      var a2 = ast.literal(10);
      var a3 = ast.id('b');
      var fn = ast.id('print');
      assert.equal('print(4 + 3, 10, b)', gen(ast.call(fn, [a1,a2,a3])))
    });
});

