import UIKit

/*
 
 Properties ใช้สำหรับเชื่อมโยงค่ากับคลาส โครงสร้าง และ Enumeration โดย Properties เหล่านี้สามารถเป็นค่าคงที่หรือตัวแปรก็ได้ และสามารถใช้ในการคำนวณค่าเป็นส่วนหนึ่งของอินสแตนซ์ นอกจากนี้ ยังสามารถเก็บค่าที่คำนวณได้เป็น Type Properties ซึ่งเป็น Properties ที่เชื่อมโยงกับประเภทข้อมูลเอง

 ในภาษา Swift มีกลไกที่เรียกว่า Property Wrappers ซึ่งช่วยให้สามารถใช้โค้ดซ้ำในส่วนของ Getter และ Setter ของ Properties หลายตัว Property Wrappers ช่วยให้สามารถห่อหุ้มพฤติกรรมและตรรกะที่กำหนดเองไว้ ทำให้ง่ายต่อการจัดการ Properties ที่มีฟังก์ชันการทำงานคล้ายกันได้อย่างกระชับและเป็นโมดูล Property Wrappers มอบความยืดหยุ่นและมีประสิทธิภาพในการเพิ่มฟังก์ชันการทำงานเพิ่มเติมให้กับ Properties ในขณะเดียวกันก็ส่งเสริมการใช้โค้ดซ้ำและการบำรุงรักษาโค้ด
 
 
 
 Property Wrapper ไม่ได้ขึ้นอยู่กับตำแหน่งที่นำไปใช้ใน class หรือ struct แต่มันจะทำงานอัตโนมัติตามโลจิกหรือสิ่งที่เราเขียนไว้ใน struct ของ Property Wrapper เอง

 เมื่อเรากำหนด Property Wrapper ให้กับ Property ใน class หรือ struct ตัว Property Wrapper จะถูกเรียกใช้งานโดยอัตโนมัติเมื่อมีการอ่านหรือเขียนค่าของ Property นั้น โดยไม่จำเป็นต้องเรียกใช้งานโค้ดใน Property Wrapper ด้วยตนเอง
 */


// กำหนด Property Wrapper ชื่อ Capitalized
@propertyWrapper
struct Capitalized {
   /*
    {}
    Computed Property เป็นคุณสมบัติพิเศษของ Property ในภาษา Swift ที่ช่วยให้เราสามารถกำหนดตัวอ่านค่า (Getter) และตัวเขียนค่า (Setter) แบบกำหนดเองได้ แทนที่จะเก็บค่าจริงๆ ใน Property, Computed Property จะคำนวณค่าของมันทุกครั้งที่ถูกเรียกใช้
    
    */
   var wrappedValue: String {
      didSet {
         wrappedValue = wrappedValue.capitalized
      }
   }
   
   /*
    ปีกกาหลังตัวแปร wrappedValue ในโค้ดที่ให้มาคือ Property Observer ชื่อ didSet

    ในภาษา Swift, Property Observer ช่วยให้เราสามารถสังเกตและตอบสนองต่อการเปลี่ยนแปลงของค่าใน Property ได้ มีสองชนิดของ Property Observer คือ:

    willSet - ถูกเรียกก่อนที่ค่าของ Property จะถูกกำหนดใหม่
    didSet - ถูกเรียกหลังจากที่ค่าของ Property ถูกกำหนดใหม่แล้ว
    ในกรณีนี้ เรากำลังใช้ didSet Property Observer กับ wrappedValue ซึ่งหมายความว่า เมื่อค่าของ wrappedValue ถูกกำหนดใหม่ โค้ดภายในปีกกาของ didSet จะถูกเรียกใช้งานโดยอัตโนมัติ
    
    */
   
   init(wrappedValue: String) {
      self.wrappedValue = wrappedValue.uppercased()
   }
   
}

// คลาส Person ที่มี Property ชื่อ name และใช้ @Capitalized Property Wrapper
class Person {
   @Capitalized var name: String
   
   init(name: String) {
      self.name = name
   }
}

let person = Person(name: "john doe")
print(person.name)

person.name = "jane smith"
print(person.name)
/*
 ในตัวอย่างโค้ดนี้ เรากำหนด Property Wrapper ชื่อ @Capitalized ซึ่งมีหน้าที่ในการทำให้ค่าของ Property ที่ห่อหุ้มด้วย @Capitalized เป็นตัวพิมพ์ใหญ่ในตัวอักษรแรกของแต่ละคำ

 เรามีคลาส Person ที่มี Property ชื่อ name และใช้ @Capitalized Property Wrapper กับ name เมื่อเราสร้างอินสแตนซ์ของคลาส Person และกำหนดค่าให้กับ name ค่าที่กำหนดจะถูกแปลงเป็นตัวพิมพ์ใหญ่ในตัวอักษรแรกของแต่ละคำโดยอัตโนมัติ

 เมื่อเราพิมพ์ค่าของ person.name ผลลัพธ์จะเป็น "John Doe" ซึ่งเป็นค่าที่ถูกแปลงเป็นตัวพิมพ์ใหญ่ในตัวอักษรแรกของแต่ละคำแล้ว

 เมื่อเรากำหนดค่าใหม่ให้กับ person.name เป็น "jane smith" ค่าที่กำหนดจะถูกแปลงเป็นตัวพิมพ์ใหญ่ในตัวอักษรแรกของแต่ละคำอีกครั้ง ดังนั้น เมื่อเราพิมพ์ค่าของ person.name ผลลัพธ์จะเป็น "Jane Smith"

 Property Wrappers ช่วยให้เราสามารถเพิ่มพฤติกรรมและตรรกะเพิ่มเติมให้กับ Properties ได้อย่างสะดวก โดยไม่ต้องเขียนโค้ดซ้ำในหลายๆ ที่ ทำให้โค้ดมีความกระชับ อ่านง่าย และง่ายต่อการบำรุงรักษา

 
 */

/*
 เมื่อสร้างอินสแตนซ์ของคลาส `Person` ด้วยการเรียก `Person(name: "john doe")` ลำดับการทำงานของ Property Wrapper `@Capitalized` จะเป็นดังนี้:

 1. `init(wrappedValue: String)` ของ `Capitalized` จะถูกเรียกก่อน
    - เมื่อสร้างอินสแตนซ์ของ `Person` ค่า `"john doe"` จะถูกส่งเข้าไปใน `init(name: String)` ของคลาส `Person`
    - ภายใน `init(name: String)` ค่า `"john doe"` จะถูกกำหนดให้กับ `self.name`
    - เนื่องจาก `name` ถูกประกาศโดยใช้ `@Capitalized` Property Wrapper ดังนั้น `init(wrappedValue: String)` ของ `Capitalized` จะถูกเรียกโดยใช้ค่า `"john doe"` เป็นอาร์กิวเมนต์
    - ภายใน `init(wrappedValue: String)` ของ `Capitalized` ค่า `"john doe"` จะถูกแปลงเป็น `"John Doe"` โดยใช้ `wrappedValue.capitalized` และกำหนดให้กับ `self.wrappedValue`

 2. `didSet` ของ `wrappedValue` ใน `Capitalized` จะยังไม่ถูกเรียกใช้งานในขั้นตอนนี้
    - `didSet` จะถูกเรียกเมื่อมีการเปลี่ยนแปลงค่าของ `wrappedValue` หลังจากที่ `init(wrappedValue: String)` เสร็จสิ้นแล้ว

 ดังนั้น ในการสร้างอินสแตนซ์ `let person = Person(name: "john doe")` ขั้นตอนจะเป็นดังนี้:
 1. `init(wrappedValue: String)` ของ `Capitalized` จะถูกเรียกก่อน และค่า `"john doe"` จะถูกแปลงเป็น `"John Doe"` และกำหนดให้กับ `wrappedValue`
 2. `init(name: String)` ของ `Person` จะเสร็จสิ้น และ `person` จะถูกสร้างขึ้นมา
 3. ค่าเริ่มต้นของ `person.name` จะเป็น `"John Doe"` ซึ่งเป็นผลจากการทำงานของ `init(wrappedValue: String)` ใน `Capitalized`

 หลังจากนั้น หากมีการเปลี่ยนแปลงค่าของ `person.name` เช่น `person.name = "jane smith"` จะเกิดเหตุการณ์ดังนี้:
 1. `didSet` ของ `wrappedValue` ใน `Capitalized` จะถูกเรียกใช้งาน
 2. ค่า `"jane smith"` จะถูกแปลงเป็น `"Jane Smith"` โดย `wrappedValue.capitalized` ภายใน `didSet`
 3. ค่าของ `person.name` จะถูกอัปเดตเป็น `"Jane Smith"`

 สรุปได้ว่า `init(wrappedValue: String)` จะถูกเรียกก่อนในขั้นตอนการสร้างอินสแตนซ์ของ `Person` ส่วน `didSet` จะถูกเรียกเมื่อมีการเปลี่ยนแปลงค่าของ `wrappedValue` หลังจากการสร้างอินสแตนซ์แล้ว
 
 */
