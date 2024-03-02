import UIKit

/*
 Control transfer statements
 คำสั่งการโอนย้ายการควบคุม (Control transfer statements) ใน Swift ช่วยให้สามารถเปลี่ยนแปลงลำดับการดำเนินการโค้ดได้โดยการโอนย้ายการควบคุมจากส่วนหนึ่งของโค้ดไปยังอีกส่วนหนึ่ง Swift มีคำสั่งการโอนย้ายการควบคุมทั้งหมด 5 ประเภทเพื่อวัตถุประสงค์นี้:

 Continue - ใช้ในลูปเพื่อข้ามการทำซ้ำปัจจุบันและดำเนินการต่อไปยังการทำซ้ำถัดไป
 Break - ใช้เพื่อหยุดการทำซ้ำลูปหรือออกจากคำสั่ง switch
 Fallthrough - ใช้ในคำสั่ง switch เพื่อทำให้การดำเนินการต่อไปยัง case ถัดไปโดยไม่ตรวจสอบเงื่อนไข
 Return - ใช้เพื่อออกจากฟังก์ชันและส่งค่ากลับ
 Throw - ใช้เพื่อรายงานข้อผิดพลาด
 */

// continue
// ตัวอย่าง continue, คำสั่งนี้จะข้ามการทำซ้ำปัจจุบันถ้าเลขเป็นเลขคู่และดำเนินการต่อไปยังการทำซ้ำถัดไป
//for num in 1...10 {
//   if num % 2 == 0 {
//      continue
//   }
//   print(num)
//}
// จะพิมพ์เลขคี่จาก 1 ถึง 9

// break
// ตัวอย่าง break, คำสั่งนี้จะหยุดการทำซ้ำลูปเมื่อพบเลข 4
//let numbers = [1, 2, 3, 4, 5, 6]
//for num in numbers {
//   if num == 4 {
//      break
//   }
//   print(num)
//}
// จะพิมพ์ 1, 2, 3 แล้วหยุด

// fallthrough
// ตัวอย่าง fallthrough, คำสั่งนี้ใช้ในคำสั่ง switch เพื่อทำให้การดำเนินการต่อไปยัง case ถัดไปโดยไม่ตรวจสอบเงื่อนไข
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
   description += " a prime number, and also"
   fallthrough
default:
   description += " an integer"
}
print(description)
// จะพิมพ์ "The number 5 is a prime number, and also an integer."
