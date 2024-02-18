import UIKit

/*
 การรวมตัวดําเนินการตรรกะ (Combining Logical Operators)

 สามารถรวมตัวดําเนินการตรรกะเข้าด้วยกันเพื่อสร้างนิพจน์ที่ซับซ้อนขึ้นได้ เช่น

 ```
 if (enterCodeCorrect && fingerprintMatch)
    || hasKeycard
    || knowsPassword) {

   // เข้ามาในนี้ถ้าเงื่อนไขใดเงื่อนไขหนึ่งเป็นจริง
 }
 ```

 แต่ละตัวดําเนินการจะทํางานกับค่าเพียง 2 ค่าเท่านั้น ดังนั้นผลลัพธ์คือการเชื่อมโยงนิพจน์เล็กๆ หลายนิพจน์เข้าด้วยกัน

 หมายเหตุ: ใน Swift ตัวดําเนินการ && และ || จะประเมินจากซ้ายไปขวา
 */

 let enteredPasscode = true
 let fingerprintVerified = false
 let haskeycard = true
 let knowsBackupPassword = false

if (enteredPasscode && fingerprintVerified) || haskeycard || (enteredPasscode && knowsBackupPassword) {
   print("Welcome!")
} else {
   print("Access denied")
}
