import UIKit

/*
 Computed property แบบอ่านอย่างเดียว (Read-only computed property) คือ Computed property ที่มีเพียง getter โดยไม่มี setter ซึ่งจะคืนค่าเสมอและสามารถเข้าถึงได้ผ่าน dot syntax แต่ไม่สามารถกำหนดค่าให้มันได้
 
 - `Cuboid` เป็น struct ที่มี property `width`, `height` และ `depth` เป็นค่า `Double` และมีค่าเริ่มต้นเป็น 0.0
 - `volume` เป็น read-only computed property ที่คำนวณปริมาตรของ cuboid โดยใช้สูตร `width * height * depth`
 - เนื่องจาก `volume` เป็น read-only computed property จึงไม่สามารถกำหนดค่าให้มันได้ แต่สามารถเรียกใช้ค่าของมันได้

 */

struct Cuboid {
   var width = 0.0, height = 0.0, depth = 0.0
   var volume: Double {
      return width * height * depth
   }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)
print("the volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")

/*
 - สร้าง instance ของ `Cuboid` ชื่อ `fourByFiveByTwo` โดยกำหนดค่า `width` เป็น 4.0, `height` เป็น 5.0 และ `depth` เป็น 2.0
 - เรียกใช้ค่าของ `volume` ผ่าน `fourByFiveByTwo.volume` ซึ่งจะคำนวณปริมาตรของ cuboid ที่มีขนาด 4.0 x 5.0 x 2.0 และพิมพ์ผลลัพธ์ "the volume of fourByFiveByTwo is 40.0"
 */
