import UIKit

/*
 ใน Swift, สิ่งที่คล้ายกับ do-while คือ repeat-while
 ตัวอย่างโค้ดใช้งาน do-while ในภาษาที่รองรับ (Swift ใช้ repeat-while แทน)

 */

// ตัวอย่างโค้ดใช้งาน repeat-while ใน Swift
var count = 0

// ลูป repeat-while จะทำงานอย่างน้อยหนึ่งครั้ง แม้เงื่อนไขจะเป็น false ตั้งแต่ครั้งแรก
repeat {
   // พิมพ์ค่า count ออกมา
   print("Count is \(count)")
   // เพิ่มค่า count ขึ้น 1
   count += 1
} while count < 5
