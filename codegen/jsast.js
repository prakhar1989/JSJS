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

module.exports = {
    literal: literal,
    unop: unop,
    id: id,
    binop: binop
}

