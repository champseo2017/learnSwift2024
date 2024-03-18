import UIKit

/*
 Autoclosures ใน Swift เป็นประเภทพิเศษของ closure ที่ถูกสร้างขึ้นโดยอัตโนมัติเมื่อถูกส่งเป็นอาร์กิวเมนต์ให้กับฟังก์ชัน มันถูกใช้เพื่อหน่วงการประเมินค่าของ expression จนกระทั่งมันจำเป็นต้องใช้งานจริง และจะถูกเรียกใช้โดยอัตโนมัติเมื่อฟังก์ชันนั้นถูกเรียกใช้ นี่คือตัวอย่างของ autoclosure ใน Swift
 
 */

func printIftrue(_ condition: @autoclosure () -> Bool) {
   if condition() {
      print("Condition is true")
   } else {
      print("Condition is false")
   }
}

// เรียกใช้ฟังก์ชันด้วย autoclosure
printIftrue(2 + 2 == 4) // Condition is true
