import UIKit

/*
 
 ในภาษา Swift คลาสถูกจัดเป็นประเภท Reference type ซึ่งหมายความว่าตัวแปรหรือค่าคงที่หลายตัวสามารถอ้างอิงถึงอินสแตนซ์เดียวกันของคลาสได้ อย่างไรก็ตาม พฤติกรรมนี้ไม่เกิดขึ้นกับโครงสร้าง (Structure) และ Enumeration เนื่องจากเป็นประเภท Value type และจะทำการคัดลอกเมื่อมีการกำหนดค่าให้กับตัวแปรหรือค่าคงที่อื่น
 
 เพื่อระบุหรือตรวจสอบว่าตัวแปรหรือค่าคงที่สองตัวอ้างอิงถึงอินสแตนซ์เดียวกันของคลาสหรือไม่ Swift มีตัวดำเนินการ (Operator) สองตัว ได้แก่:

 Identical To (===)
 Not Identical To (!==)
 เราสามารถใช้ตัวดำเนินการเหล่านี้เพื่อตรวจสอบว่าตัวแปรหรือค่าคงที่สองตัวอ้างอิงถึงอินสแตนซ์เดียวกันหรือไม่
 */


class BigXObject {
   // คลาส BigXObject
}

let bigXObject = BigXObject()
let alsoBigXObject = bigXObject

if bigXObject === alsoBigXObject {
   print("bigXObject and alsoBigXObject referring to the same instance of class")
}

/*
 ในตัวอย่างโค้ดนี้ เรามีคลาสชื่อ BigXObject เราสร้างอินสแตนซ์ของคลาส BigXObject และกำหนดให้กับตัวแปร bigXObject จากนั้นเรากำหนดค่าของ bigXObject ให้กับตัวแปร alsoBigXObject

 เมื่อเราใช้ตัวดำเนินการ Identical To (===) เพื่อเปรียบเทียบ bigXObject และ alsoBigXObject ผลลัพธ์จะเป็น true เนื่องจากทั้งสองตัวแปรอ้างอิงถึงอินสแตนซ์เดียวกันของคลาส BigXObject

 ดังนั้น ข้อความ "bigXObject and alsoBigXObject referring to the same instance of class" จะถูกพิมพ์ออกมา

 ตัวดำเนินการ Identical To (===) และ Not Identical To (!==) มีประโยชน์ในการตรวจสอบว่าตัวแปรหรือค่าคงที่สองตัวอ้างอิงถึงอินสแตนซ์เดียวกันของคลาสหรือไม่ ซึ่งเป็นพฤติกรรมเฉพาะของ Reference type ในภาษา Swift
 
 */
