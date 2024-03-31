import UIKit

/*
 คำสั่ง `indirect`
 การใส่ indirect ไว้ข้างหน้า enumeration case ใน ArithmeticExp ทำให้ case นั้นสามารถมี associated value ที่เป็น ArithmeticExp ได้ ซึ่งเป็นการอนุญาตให้เกิด recursion

 */

enum ArithmeticExp {
   case number(Int)
   indirect case addition(ArithmeticExp, ArithmeticExp)
   indirect case multiplication(ArithmeticExp, ArithmeticExp)
}

let five = ArithmeticExp.number(5)
let four = ArithmeticExp.number(4)
let sum = ArithmeticExp.addition(five, four)
let product = ArithmeticExp.multiplication(sum, ArithmeticExp.number(2))

func evaluate (_ expression: ArithmeticExp) -> Int {
   switch expression {
   case let .number(value):
      return value
   case let .addition(left, right):
      return evaluate(left) + evaluate(right)
   case let .multiplication(left, right):
      return evaluate(left) * evaluate(right)
   }
}

let result = evaluate(product)
print(result)
