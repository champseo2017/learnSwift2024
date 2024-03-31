import UIKit

/*
 ในภาษา Swift, structure และ class เป็น building block ที่สำคัญมากในการจัดระเบียบและ encapsulate code โดยเราสามารถกำหนด property และ method ให้กับ structure หรือ class เพื่อเพิ่ม functionality ที่ต้องการได้ นอกจากนี้ ภาษา Swift ยังไม่บังคับให้เราต้องแยก interface และ implementation ออกจากกัน เราสามารถกำหนดทั้งคู่ไว้ใน structure หรือ class เดียวกันได้เลย

 */

struct Rectangle {
   var width: Double // ความกว้างของสี่เหลี่ยมผืนผ้า
   var height: Double // ความสูงของสี่เหลี่ยมผืนผ้า
   
   func area() -> Double {
       return width * height // คำนวณพื้นที่ โดยใช้ ความกว้าง * ความสูง
   }
   
   func perimeter() -> Double {
       return 2 * (width + height) // คำนวณเส้นรอบรูป โดยใช้ 2 * (ความกว้าง + ความสูง)
   }
}

let rect = Rectangle(width: 5, height: 10) // สร้าง instance ของ Rectangle กำหนดความกว้างเป็น 5 และความสูงเป็น 10

print(rect.area()) // พิมพ์ค่าพื้นที่ของ rect
print(rect.perimeter()) // พิมพ์ค่าเส้นรอบรูปของ rect
