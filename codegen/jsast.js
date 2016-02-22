var es = require('escodegen');

function literal(l) {
    return {
        "type": "Literal", 
        "value": l
    };
}

function id(x) {
    return {
        "type": "Identifier",
        "name": x
    };
}

function unop(op, expr) {
    return {
        type: "UnaryExpression",
        operator: op,
        argument: expr,
        prefix: true
    }
}

function binop(op, expr1, expr2) {
    return {
        type: "BinaryExpression",
        operator: op,
        left: expr1,
        right: expr2
    }
}

function assign(id, expr) {
    return {
      "type": "VariableDeclaration",
      "declarations": [
        {
          "type": "VariableDeclarator",
          "id": id,
          "init": expr 
        }
      ],
      "kind": "let"
    }
}

function call(id, exprs) {
    return {
        type: "CallExpression",
        callee: id,
        arguments: exprs
    }
}

module.exports = {
    literal: literal,
    unop: unop,
    id: id,
    binop: binop,
    assign: assign,
    call: call
}

