import UIKit

/*
 ตัวดําเนินการตรรกะและ (Logical AND Operator)
 การประเมินผลเป็น true นั้น ทั้งสองค่าจะต้องเป็น true ถึงจะใช้ตัวดําเนินการ Logical AND (x && y) ได้ ซึ่งจะสร้างผลลัพธ์เป็น true หรือ false

 ถ้าค่าใดค่าหนึ่งเป็น false ผลลัพธ์ทั้งหมดจะเป็น false เลย และไม่จําเป็นต้องตรวจสอบค่าอีกตัวหนึ่งอีก
 */

let enterCodeCorrect = true
let fingerprintMatch = false
if enterCodeCorrect && fingerprintMatch {
   print("Welcome To Office")
} else {
   print("NO ACCESS")
}
