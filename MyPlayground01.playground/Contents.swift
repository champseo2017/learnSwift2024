import UIKit

/*
 อักขระพิเศษใน String

 String Literal รองรับการใช้อักขระพิเศษดังตารางต่อไปนี้:

 \0 - null character
 \ - backslash
 \t - tab นิพจน์
 \n - line feed (ขึ้นบรรทัดใหม่)
 \r - carriage return
 " - เครื่องหมายคําพูดคู่

 ' - เครื่องหมายคําพูดเดี่ยว
 \u{n} - Unicode character
 */

let message = "สวัสดี\nคุณสบายดีไหม"
let dollarSign = "\u{24}"
print(dollarSign)
