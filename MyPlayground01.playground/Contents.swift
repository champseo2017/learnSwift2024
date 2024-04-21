import UIKit

/*
 โค้ดตัวอย่างนี้แสดงให้เห็นถึงการดึงค่า (query) และการกำหนดค่า (set) ให้กับ type property ในภาษา Swift โดยมีการใช้งานทั้ง stored type property และ computed type property ใน struct, enum และ class
 */

struct SampleStructure {
   static var storedTypeProperty = "Sample value."
}

enum SampleEnumeration {
   static var computedTypeProperty: Int {
      return 6
   }
}

class SampleClass {
   static var computedTypeProperty: Int {
      return 27
   }
}

print(SampleStructure.storedTypeProperty) // Prints "Sample value."
SampleStructure.storedTypeProperty = "Another value."
print(SampleStructure.storedTypeProperty)

print(SampleEnumeration.computedTypeProperty)
print(SampleClass.computedTypeProperty)

/*
 คำอธิบาย:

 1. `SampleStructure` เป็น struct ที่มี stored type property ชื่อ `storedTypeProperty` ซึ่งมีค่าเริ่มต้นเป็น "Sample value."

 2. `SampleEnumeration` เป็น enumeration ที่มี computed type property ชื่อ `computedTypeProperty` ซึ่งคำนวณค่าและส่งค่ากลับเป็น 6

 3. `SampleClass` เป็น class ที่มี computed type property ชื่อ `computedTypeProperty` ซึ่งคำนวณค่าและส่งค่ากลับเป็น 27

 4. `print(SampleStructure.storedTypeProperty)` พิมพ์ค่าของ `storedTypeProperty` ซึ่งเป็น "Sample value." ในตอนแรก

 5. `SampleStructure.storedTypeProperty = "Another value."` กำหนดค่าใหม่ให้กับ `storedTypeProperty` เป็น "Another value."

 6. `print(SampleStructure.storedTypeProperty)` พิมพ์ค่าของ `storedTypeProperty` หลังจากที่มีการกำหนดค่าใหม่ ซึ่งจะเป็น "Another value."

 7. `print(SampleEnumeration.computedTypeProperty)` พิมพ์ค่าของ `computedTypeProperty` ใน `SampleEnumeration` ซึ่งจะเป็น 6

 8. `print(SampleClass.computedTypeProperty)` พิมพ์ค่าของ `computedTypeProperty` ใน `SampleClass` ซึ่งจะเป็น 27

 โค้ดตัวอย่างนี้แสดงให้เห็นการใช้งาน stored type property และ computed type property ในโครงสร้างข้อมูลต่างๆ เช่น struct, enum และ class ในภาษา Swift โดยสามารถเข้าถึงและกำหนดค่าให้กับ type property ได้โดยใช้ชื่อของ type นั้นๆ ตามด้วยชื่อของ property
 
 หากต้องการให้ computed property สามารถกำหนดค่าได้ จะต้องเพิ่ม setter ให้กับ property นั้น
 enum SampleEnumeration {
     static var computedTypeProperty: Int {
         get {
             return 6
         }
         set {
             // Perform some action when the property is set
             print("New value is \(newValue)")
         }
     }
 }
 
 การเลือกใช้ static หรือ class ขึ้นอยู่กับความต้องการและพฤติกรรมที่คุณต้องการสำหรับ type property นั้นๆ หากคุณไม่ต้องการให้ subclass สามารถ override property ได้ หรือหากคุณกำหนด type property ใน struct หรือ enum คุณสามารถใช้ static ได้ แต่หากคุณต้องการให้ subclass สามารถ override property ได้ คุณสามารถใช้ class ได้ใน class
 
*/
