import UIKit

// Example of Recursive Enumeration for Mathematical Calculations
enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

// Function to calculate the result
func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case .number(let value):
        return value
    case .addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}

// Usage example
let example = ArithmeticExpression.addition(
    .number(5),
    .multiplication(.number(2), .number(3))
)

let result = evaluate(example)
print("Result: \(result)")  // Prints: Result: 11

// คำอธิบายเป็นภาษาไทย:
// 1. เราสร้าง enum ชื่อ ArithmeticExpression ที่มี 3 กรณี:
//    - number: เก็บค่าตัวเลขธรรมดา
//    - addition: เก็บนิพจน์ทางคณิตศาสตร์ 2 ตัวที่ต้องการบวกกัน
//    - multiplication: เก็บนิพจน์ทางคณิตศาสตร์ 2 ตัวที่ต้องการคูณกัน
// 2. คำสำคัญ indirect ใช้เพื่อบอกว่ากรณีนี้อาจมีการอ้างอิงถึงตัวมันเองได้
// 3. ฟังก์ชัน evaluate ใช้สำหรับคำนวณผลลัพธ์ของนิพจน์ทางคณิตศาสตร์
// 4. ในตัวอย่าง เราสร้างนิพจน์ 5 + (2 * 3) และคำนวณผลลัพธ์
