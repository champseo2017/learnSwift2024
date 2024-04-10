import UIKit

/*
 
 Computed Property คือ Property ใน class, struct และ enumeration ที่ไม่ได้เก็บค่าจริงๆ แต่จะมีการกำหนด getter และ setter (ไม่บังคับ) เพื่อใช้ในการดึงและกำหนดค่าของ Property แบบอ้อม
 */

class Circle {
   var radius: Double = 0
   
   var diameter: Double {
      get {
         return radius * 2
      }
      
      set {
         radius = newValue / 2
      }
   }
   
   var area: Double {
      return Double.pi * radius * radius
   }
}

let circle = Circle()
circle.radius = 5
print(circle.diameter)
print(circle.area)

circle.diameter = 20
print(circle.radius)
print(circle.area)

/*
 ในตัวอย่างโค้ดข้างต้น เรามี class `Circle` ที่มี Stored Property และ Computed Property ดังนี้:
 - `radius` เป็น Stored Property ชนิด `Double` ใช้เก็บรัศมีของวงกลม
 - `diameter` เป็น Computed Property ชนิด `Double` ใช้คำนวณและกำหนดค่าเส้นผ่านศูนย์กลางของวงกลม
   - `get` ใช้คำนวณเส้นผ่านศูนย์กลางโดยใช้สูตร `diameter = 2 * radius`
   - `set` ใช้กำหนดค่ารัศมีเมื่อมีการกำหนดค่าให้กับ `diameter` โดยใช้สูตร `radius = diameter / 2`
 - `area` เป็น Computed Property ชนิด `Double` ใช้คำนวณพื้นที่ของวงกลมโดยใช้สูตร `area = π * radius^2`

 เมื่อเราสร้าง instance ของ `Circle` และกำหนดค่า `radius` เป็น 5 เมื่อเรียกใช้ `circle.diameter` จะมีการคำนวณเส้นผ่านศูนย์กลางโดยใช้ getter ของ `diameter` ซึ่งจะได้ค่าเป็น 10.0 และเมื่อเรียกใช้ `circle.area` จะมีการคำนวณพื้นที่ของวงกลมโดยใช้ค่า `radius` ปัจจุบัน ซึ่งจะได้ค่าเป็น 78.53981633974483

 เมื่อเรากำหนดค่าให้กับ `circle.diameter` เป็น 20 setter ของ `diameter` จะถูกเรียกใช้และทำการกำหนดค่า `radius` เป็น 10.0 (ครึ่งหนึ่งของ `diameter`) เมื่อเรียกใช้ `circle.radius` จะได้ค่าเป็น 10.0 และเมื่อเรียกใช้ `circle.area` จะได้ค่าพื้นที่วงกลมใหม่เป็น 314.1592653589793

 Computed Property ช่วยให้เราสามารถคำนวณและกำหนดค่า Property แบบอ้อมโดยใช้ getter และ setter โดยที่ไม่จำเป็นต้องเก็บค่าจริงๆ ใน Property นั้น ทำให้สามารถเขียนโค้ดได้อย่างยืดหยุ่นและอ่านง่ายมากขึ้น
 
 */
