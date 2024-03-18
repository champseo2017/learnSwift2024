import UIKit

// Trailing closures 
// นิยามฟังก์ชัน performActions ที่รับ closure สองตัวเป็นอาร์กิวเมนต์
// firstAction รับ String และ Int
// secondAction รับ Int, String และ Double

func performActions(firstAction: (String, Int) -> Void, secondAction: (Int, String, Double) -> Void) {
   // เรียกใช้ firstAction พร้อมส่งข้อความและตัวเลข
   firstAction("Hello from the first action", 100)
   // เรียกใช้ secondAction พร้อมส่งตัวเลข, ข้อความ และค่า Double
   secondAction(42, "Second message", 3.14)
}

// การเรียกใช้ฟังก์ชัน performActions โดยไม่ใช้ trailing closure
// ระบุชื่อพารามิเตอร์สำหรับทั้งสอง closure
performActions(firstAction: { (message, number) in
   // โค้ดที่จะทำงานเมื่อเรียก firstAction
   print("\(message) with number \(number)")
},
secondAction: {(number, message, piValue) in
   // โค้ดที่จะทำงานเมื่อเรียก secondAction
   print("Number: \(number), \(message), and Pi is \(piValue)")
}
)

// การเรียกใช้ฟังก์ชัน performActions ด้วยการใช้ trailing closure
// ระบุชื่อพารามิเตอร์สำหรับ firstAction
// ใช้ trailing closure สำหรับ secondAction

performActions(firstAction: { (message, number) in
   // โค้ดที่จะทำงานเมื่อเรียก firstAction
       print("\(message) with number \(number)")
}){ (number, message, piValue) in
   // โค้ดที่จะทำงานเมื่อเรียก secondAction
   print("Number: \(number), \(message), and Pi is \(piValue)")
}
