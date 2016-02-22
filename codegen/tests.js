var assert = require('assert');
var ast = require('./jsast');
var es = require('escodegen');

function run(code) {
    return eval(es.generate(code));
}

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
      assert.equal('x', es.generate(ast.id('x')));
    });
});

describe('Binary operations', function() {
    it('simple', function () {
      var expr = ast.binop("+", ast.literal(7), ast.literal(3));
      assert.equal(10, run(expr));
    });
    it('with unop', function () {
      var expr = ast.binop("*", 
                          ast.unop("-", ast.literal(7)), 
                          ast.literal(3));
      assert.equal(-21, run(expr));
    });
    it('nested', function () {
        var expr = ast.binop("*",
                ast.binop("+", ast.literal(7), ast.literal(3)),
                ast.literal(4))
      assert.equal(40, run(expr));
    });
});
