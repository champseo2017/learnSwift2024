import UIKit

/*
 type properties
 
 Stored type properties สามารถประกาศเป็น constants หรือ variables ได้ ขึ้นอยู่กับว่าค่าของมันสามารถเปลี่ยนแปลงได้หรือไม่ ในทางกลับกัน computed type properties จะถูกประกาศเป็น variable properties เสมอ เนื่องจากค่าของมันถูกคำนวณใน runtime และสามารถเปลี่ยนแปลงได้ในระหว่างการทำงานของโปรแกรม

 */

struct SampleStructure {
   static var storedTypeProperty = "Sample value."
       static var computedTypeProperty: Int {
           return 1
       }
}

/*
 - `SampleStructure` เป็น struct ที่มี type properties สองตัว
 - `storedTypeProperty` เป็น stored type property ชนิด `String` ที่มีค่าเริ่มต้นเป็น "Sample value."
 - `computedTypeProperty` เป็น read-only computed type property ชนิด `Int` ที่คืนค่า 1
 */

enum SampleEnumeration {
    static var storedTypeProperty = "Sample value."
    static var computedTypeProperty: Int {
        return 6
    }
}
/*
 - `SampleEnumeration` เป็น enumeration ที่มี type properties สองตัว
 - `storedTypeProperty` เป็น stored type property ชนิด `String` ที่มีค่าเริ่มต้นเป็น "Sample value."
 - `computedTypeProperty` เป็น read-only computed type property ชนิด `Int` ที่คืนค่า 6
 */

class SampleClass {
    static var storedTypeProperty = "Sample value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideComputedTypeProperty: Int {
        return 107
    }
}
/*
 - `SampleClass` เป็น class ที่มี type properties สามตัว
 - `storedTypeProperty` เป็น stored type property ชนิด `String` ที่มีค่าเริ่มต้นเป็น "Sample value."
 - `computedTypeProperty` เป็น read-only computed type property ชนิด `Int` ที่คืนค่า 27
 - `overrideComputedTypeProperty` เป็น read-only computed type property ชนิด `Int` ที่คืนค่า 107 และใช้ `class` แทน `static` เพื่อให้สามารถ override ได้ในคลาสย่อย
 */

// เรียกใช้ type properties ของ struct
print(SampleStructure.storedTypeProperty) // Output: "Sample value."
print(SampleStructure.computedTypeProperty) // Output: 1

// เรียกใช้ type properties ของ enum
print(SampleEnumeration.storedTypeProperty) // Output: "Sample value."
print(SampleEnumeration.computedTypeProperty) // Output: 6

// เรียกใช้ type properties ของ class
print(SampleClass.storedTypeProperty) // Output: "Sample value."
print(SampleClass.computedTypeProperty) // Output: 27
print(SampleClass.overrideComputedTypeProperty) // Output: 107

// เปลี่ยนแปลงค่าของ stored type property
SampleStructure.storedTypeProperty = "Another value."
print(SampleStructure.storedTypeProperty) // Output: "Another value."

SampleClass.storedTypeProperty = "Another value."
print(SampleClass.storedTypeProperty) // Output: "Another value."

/*
 
 การใช้ static ใน Swift ช่วยให้เราสามารถประกาศ type properties และ type methods ที่สามารถเรียกใช้ได้โดยตรงบน type โดยไม่จำเป็นต้องสร้าง instance ของ type นั้น

เมื่อคุณประกาศ property หรือ method โดยใช้ static:

มันจะกลายเป็นสมาชิกของ type เอง ไม่ใช่ของ instance ใด ๆ ของ type
คุณสามารถเข้าถึงและเรียกใช้มันได้โดยตรงผ่าน ชื่อType.ชื่อProperty หรือ ชื่อType.ชื่อMethod() โดยไม่ต้องสร้าง instance ของ type
สำหรับ type properties มันจะถูกแชร์ระหว่างทุก instance ของ type และสามารถเข้าถึงและแก้ไขได้จากที่ใดก็ได้ภายใน type
 
 */
