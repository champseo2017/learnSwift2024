import UIKit

/*
 Closures
 */
// {} ใน Swift ใช้เพื่อกำหนดขอบเขตของ Closure
// (number: Int) -> Int คือการประกาศลักษณะของ Closure ที่รับพารามิเตอร์เป็น Int และส่งกลับค่าเป็น Int
// 'in' ใช้เพื่อแยกส่วนของการประกาศพารามิเตอร์และประเภทของค่าที่ส่งกลับ กับส่วนของโค้ดที่ Closure จะทำงาน
let square = { (number: Int) -> Int in
   // ส่วนระหว่าง {} คือส่วนที่เรียกว่า "body" ของ Closure
   // ภายใน body นี้จะเป็นส่วนที่ระบุว่า Closure นี้ทำงานอย่างไร
   return number * number // คำนวณผลลัพธ์โดยการยกกำลังสองของตัวเลขที่รับเข้ามา
}
// ในตัวอย่างนี้, {} ใช้เพื่อกำหนดโค้ดที่ Closure จะทำงานเมื่อมันถูกเรียกใช้
//print(square(2))

// 2. การส่ง Closure เป็นอาร์กิวเมนต์ให้กับฟังก์ชัน
func performOperation(on number: Int, using operation: (Int) -> Int) -> Int {
   return operation(number)
}

//print(performOperation(on: 3, using: square))


// 3. การใช้งาน Trailing Closure
// ส่วนของ $0 เรียกว่า "Shorthand Argument Names" หรือ "ชื่ออาร์กิวเมนต์แบบย่อ"
// $0 หมายถึงอาร์กิวเมนต์แรกที่ส่งเข้ามาใน Closure ในที่นี้คือแต่ละสมาชิกของอาร์เรย์ numbers
// ใช้เพื่อทำให้โค้ดสั้นและชัดเจนขึ้นโดยไม่ต้องประกาศชื่อพารามิเตอร์อย่างชัดเจน
// 1. จำไว้ว่า $0 และ $1 ใน Closure คือการอ้างอิงถึงอาร์กิวเมนต์ที่ส่งเข้ามา
let numbers = [1, 2, 3, 4, 5]
let squaredNumners = numbers.map{$0 * $0}
//print(squaredNumners) // ผลลัพธ์: [1, 4, 9, 16, 25]

// 4. การจับค่าจากบริบทรอบข้าง
var value = 10 // กำหนดตัวแปร value มีค่าเริ่มต้นเป็น 10
let addToValue = { (number: Int) -> Int in
   // สร้าง Closure ที่รับพารามิเตอร์เป็น Int และส่งกลับค่าเป็น Int
   return number + value // คำนวณโดยการเพิ่มค่าของพารามิเตอร์ number กับตัวแปร value จากบริบทรอบข้าง
}
value = 20 // เปลี่ยนค่าของตัวแปร value เป็น 20
print(addToValue(5)) // เรียกใช้ Closure addToValue โดยส่งค่า 5 เข้าไป

// ผลลัพธ์: 25
// ที่นี่, Closure addToValue จะใช้ค่าล่าสุดของตัวแปร value ในการคำนวณ
// แม้ว่า value จะถูกเปลี่ยนหลังจากที่ Closure ถูกสร้างขึ้นมาแล้วก็ตาม
// ดังนั้น, 5 + 20 = 25
