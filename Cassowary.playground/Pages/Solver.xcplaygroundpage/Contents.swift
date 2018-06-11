//: [Previous](@previous)
import Cocoa
import Cassowary

func testExample() throws {
    let solver = Solver()

    let left =  Variable("left")
    let mid =   Variable("mid")
    let right = Variable("right")

    try solver.addConstraint(mid == (left + right) / 2)
    try solver.addConstraint(right == left + 10)
    try solver.addConstraint(right <= 100)
    try solver.addConstraint(left >= 0)

    solver.updateVariables()
    Swift.print(solver.variables)

    // left.value is now 90.0
    // mid.value is now 95.0
    // right.value is now 100.0

    try solver.addEditVariable(variable: mid, strength: Strength.STRONG)
    try solver.suggestValue(variable: mid, value: 2)

    solver.updateVariables()
    Swift.print(solver.variables)
    //    Swift.print(left, mid, right, solver.variableSymbols)
}

try? testExample()

func example2(_ value: Double) throws {
    let solver = Solver()

    let x =  Variable("x")
    let y =   Variable("y")
    let c = Variable("c")

    try solver.addConstraint(x + y == 10)
    try solver.addConstraint(2 * x + 3 * y == c)
    try solver.addConstraint(c == value)
//    try solver.suggestValue(variable: c, value: 2)

    solver.updateVariables()
    Swift.print(solver.variables)
}

example2(5)
example2(3)

//: [Next](@next)
