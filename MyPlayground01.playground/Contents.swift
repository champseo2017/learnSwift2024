import UIKit

/*
 Closures
 */
// สร้างอาร์เรย์ของตัวเลข
let numbers = [5, 3, 8, 7, 2]
// ใช้ closure expression เพื่อเรียงลำดับตัวเลขจากน้อยไปมาก
// (n1: Int, n2: Int) -> Bool เป็นตัวอย่างของ anonymous function ใน closure expression
let sortedNumbers = numbers.sorted(by: { (n1: Int, n2: Int) -> Bool in
   return n1 < n2
})
// in ใน closure expression ใช้แบ่งระหว่างการกำหนดพารามิเตอร์และประเภทของค่าที่จะคืนกลับกับตัวโค้ดที่จะทำงานจริงๆ 

// แสดงผลลัพธ์
print(sortedNumbers)
