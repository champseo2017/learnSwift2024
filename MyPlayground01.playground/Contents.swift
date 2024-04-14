import UIKit

/*
 Property wrappers ใน Swift ช่วยเพิ่มระดับการแยกโค้ด ทำให้สามารถจัดการวิธีการเก็บและกำหนด properties ได้ ยกตัวอย่างเช่น หากคุณต้องการเพิ่ม thread safety ให้กับหลาย properties ในโค้ดของคุณ คุณไม่จำเป็นต้องใช้มาตรการ thread safety แยกกันสำหรับแต่ละ property แต่ property wrappers ช่วยให้คุณห่อหุ้มโค้ดที่จำเป็นไว้ภายใน wrapper เอง เมื่อกำหนดแล้ว โค้ดนี้สามารถนำไปใช้ซ้ำได้อย่างง่ายดายสำหรับ properties อื่น ๆ โดยเพียงแค่ใช้ property wrapper

 ในการสร้าง property wrapper คุณสามารถใช้ structure, enumeration หรือ class ที่กำหนด property wrapperValue ซึ่ง property นี้ทำหน้าที่เป็นที่เก็บข้อมูลสำหรับ wrapped property และช่วยให้สามารถกำหนดพฤติกรรมและจัดการค่าของ property ได้

 การใช้ property wrappers ช่วยให้คุณได้โค้ดที่กระชับและเป็นโมดูลมากขึ้น ส่งเสริมการนำกลับมาใช้ใหม่และการบำรุงรักษา
 
 - `FifteenOrLess` เป็น struct ที่ใช้ `@propertyWrapper` เพื่อระบุว่าเป็น property wrapper
 - มี private property `number` เป็น `Int` เพื่อเก็บค่าจริงของ wrapped property
 - มี initializer `init()` ที่กำหนดค่าเริ่มต้นของ `number` เป็น 0
 - มี computed property `wrappedValue` ที่เป็น `Int`
   - getter ส่งค่า `number` กลับ
   - setter กำหนดค่า `number` เป็นค่าที่น้อยกว่าระหว่าง `newValue` และ 15 โดยใช้ฟังก์ชัน `min()`

 */

@propertyWrapper
struct FifteenOrLess {
   private var number: Int
   
   init() {
      self.number = 0
   }
   
   var wrappedValue: Int {
      get {
         return number
      }
      set {
         number = min(newValue, 15)
      }
   }
}

struct Rectangle {
   @FifteenOrLess var height: Int
   @FifteenOrLess var width: Int
}

var rectangle = Rectangle()
print(rectangle.height) // Prints "0"

rectangle.height = 10
print(rectangle.height) // Prints "10"

rectangle.height = 24
print(rectangle.height) // Prints "15"

/*
 
 - `Rectangle` เป็น struct ที่มี properties `height` และ `width` เป็น `Int` และใช้ `@FifteenOrLess` เป็น property wrapper
 - สร้าง instance `rectangle` ของ `Rectangle`
 - พิมพ์ค่า `rectangle.height` ซึ่งจะเป็น "0" (ค่าเริ่มต้นจาก initializer ของ `FifteenOrLess`)
 - กำหนดค่า `rectangle.height` เป็น 10 และพิมพ์ค่า ซึ่งจะเป็น "10"
 - กำหนดค่า `rectangle.height` เป็น 24 และพิมพ์ค่า ซึ่งจะเป็น "15" (เนื่องจาก setter ของ `wrappedValue` จำกัดค่าสูงสุดไว้ที่ 15)

 Property wrapper `FifteenOrLess` ช่วยให้สามารถจำกัดค่าของ property ไม่ให้เกิน 15 ได้อย่างง่ายดาย โดยไม่ต้องเขียนโค้ดเพิ่มเติมในแต่ละ property ที่ต้องการใช้การจำกัดค่านี้
 */
