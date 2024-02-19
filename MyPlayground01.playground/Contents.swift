import UIKit

/*
 อักขระ (Characters)
 คุณสามารถเข้าถึงค่าของอักขระแต่ละตัวใน String ได้ โดยการวนลูป (Loop) ผ่าน String ด้วย for-in loop หรือ while loop
 
 
 */

for char in "Hello" {
   print(char)
}

// นอกจากนี้ ยังสามารถ initialize Character เหมือนกับ String โดยกําหนดค่าให้กับ Type Annotation แบบ Character ได้เลย
let exclaim: Character = "!"
