import UIKit

/*
 Property observers เป็นวิธีการสังเกตการเปลี่ยนแปลงค่าของ property โดยจะถูกเรียกทุกครั้งเมื่อมีการกำหนดค่าใหม่ให้กับ property ที่กำลังถูกสังเกต คุณสามารถเพิ่ม property observers ได้ในกรณีต่อไปนี้:

 Stored properties ที่คุณกำหนดเอง
 Stored properties ที่คุณสืบทอดมา
 Computed properties ที่คุณสืบทอดมา
 สำหรับ properties ที่สืบทอดมา คุณสามารถเพิ่ม property observers ได้โดยการ override property นั้นในคลาสย่อย

 มีตัวเลือกในการกำหนด observer ต่อไปนี้ในแต่ละ property:

 willSet จะถูกเรียกก่อนที่ค่าจะถูกบันทึกลงใน property เพื่อให้คุณสามารถดำเนินการใด ๆ ก่อนที่ค่าจะเปลี่ยนแปลง
 didSet จะถูกเรียกทันทีหลังจากที่ค่าใหม่ถูกบันทึกลงใน property ที่ถูกสังเกต
 เมื่อใช้ willSet ค่าใหม่ของ property จะถูกส่งผ่านเป็นพารามิเตอร์คงที่ ถ้าคุณไม่ได้กำหนดชื่อพารามิเตอร์และวงเล็บ ชื่อพารามิเตอร์เริ่มต้น newValue จะถูกใช้
 ในทำนองเดียวกัน เมื่อใช้ didSet พารามิเตอร์คงที่ที่มีค่าเก่าของ property จะถูกส่งผ่าน คุณสามารถกำหนดชื่อพารามิเตอร์หรือใช้ชื่อพารามิเตอร์เริ่มต้น oldValue

 ข้อสำคัญคือ ถ้าคุณกำหนดค่าให้กับ property ภายใน didSet ของตัวมันเอง ค่าที่กำหนดใหม่จะแทนที่ค่าที่เพิ่งถูกตั้งค่า พฤติกรรมนี้ช่วยให้สามารถปรับแต่งและควบคุมค่าและพฤติกรรมของ property เพิ่มเติมเมื่อมีการเปลี่ยนแปลง

 */

class TapCounter {
   var totalTaps: Int = 0 {
      willSet(newTotalTaps) {
         print("About to set totalTaps to \(newTotalTaps)")
      }
      didSet {
         if totalTaps > oldValue {
            print("Added \(totalTaps - oldValue) Taps")
         }
      }
   }
}

let tapCounter = TapCounter()
tapCounter.totalTaps = 200
// About to set totaltaps to 200
// Added 200 taps
tapCounter.totalTaps = 360
// About to set totalSteps to 360
// Added 160 taps
tapCounter.totalTaps = 896
// About to set totaltaps to 896
// Added 536 taps
/*
 - `TapCounter` เป็น class ที่มี property `totalTaps` เป็น `Int` และมีค่าเริ่มต้นเป็น 0
 - มีการกำหนด property observers ให้กับ `totalTaps` ได้แก่ `willSet` และ `didSet`
 - `willSet` จะพิมพ์ข้อความบอกว่ากำลังจะเปลี่ยนค่า `totalTaps` เป็นค่าใหม่ที่ได้รับมา โดยใช้ชื่อพารามิเตอร์ว่า `newTotalTaps`
 - `didSet` จะตรวจสอบว่าค่า `totalTaps` ใหม่มากกว่าค่าเก่า (`oldValue`) หรือไม่ ถ้าใช่จะพิมพ์ข้อความบอกจำนวนที่เพิ่มขึ้น

 
 - สร้าง instance ของ `TapCounter` ชื่อ `tapCounter`
 - กำหนดค่า `totalTaps` เป็น 200, 360 และ 896 ตามลำดับ
 - ในแต่ละครั้งที่มีการกำหนดค่าใหม่ `willSet` จะพิมพ์ข้อความบอกค่าใหม่ที่กำลังจะถูกตั้ง และ `didSet` จะพิมพ์ข้อความบอกจำนวนที่เพิ่มขึ้น
 */
