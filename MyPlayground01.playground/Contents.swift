import UIKit

/*
 fallthrough ใน Swift คือคำสั่งที่ใช้ในคำสั่ง switch เพื่อบอกให้โปรแกรมตกผ่านไปยัง case ถัดไปโดยไม่ต้องตรวจสอบเงื่อนไขของ case นั้นๆ
 */

let integerToCheck = 5
var sentence = "The number \(integerToCheck) is"
switch integerToCheck {
case 2, 3, 5, 7:
   sentence += " a prime number, and also"
   fallthrough // ใช้ fallthrough เพื่อตกผ่านไปยัง case ถัดไป
default:
   sentence += " an interger"
}
print(sentence)
