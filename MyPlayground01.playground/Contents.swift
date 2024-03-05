import UIKit

/*
 continue ถูกใช้เพื่อสั่งให้ลูปข้ามไปยังการทำซ้ำครั้งถัดไปทันที โดยไม่ต้องทำคำสั่งที่เหลืออยู่ในการทำซ้ำปัจจุบันนั้น
 */

let inputStatement = "Welcome to this University !"
var outputStatement = ""
let characterRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in inputStatement {
   if characterRemove.contains(character) {
      continue
   }
   outputStatement.append(character)
}
print(outputStatement)
