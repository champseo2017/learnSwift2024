import UIKit

/*
 ตัวดําเนินการตรรกะเท็จ (Logical NOT Operator)

 ตัวดําเนินการนี้ใช้สําหรับกลับการทํางานของค่า Boolean กล่าวคือ ถ้าค่า Boolean เดิมเป็น true หลังจากใช้ตัวดําเนินการนี้แล้วจะกลายเป็น false และถ้าเดิมเป็น false จะกลายเป็น true

 ตัวดําเนินการนี้จะวางไว้ด้านหน้าของค่า Boolean ที่ต้องการจะกลับการทํางาน
 */

let gateEntry = false

if !gateEntry {
   print("No Access")
}
