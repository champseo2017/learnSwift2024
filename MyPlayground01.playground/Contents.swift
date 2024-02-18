import UIKit

/*
 ตัวดําเนินการตรรกะหรือ (Logical OR Operator)
 
 เป็นตัวดําเนินการที่ทําให้สามารถสร้างนิพจน์ทางตรรกะ ที่ให้ค่า true ได้ เมื่อค่าเพียงข้างเดียวเป็น true  (x || y)

 ตัวดําเนินการนี้ใช้ Short Circuit Evaluation โดยหากฝั่งซ้ายเป็น true แล้ว ฝั่งขวาจะไม่ถูกประเมิน เพราะไม่สามารถเปลี่ยนแปลงผลลัพธ์ทั้งหมดได้แล้ว
 
 */

let haskeycard = false
let knowsPassword = true

if haskeycard || knowsPassword {
   print("knowsPassword")
} else {
   print("haskeycard and knowsPassword")
}
