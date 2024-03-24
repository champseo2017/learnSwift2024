import UIKit

/*
 คำสั่ง `indirect` ใน Swift ใช้กับอีนัมเมอเรชั่นเพื่อระบุว่ากรณีของอีนัมเมอเรชั่นนั้น

 */

// สามารถมีอินสแตนซ์ของอีนัมเมอเรชั่นเองเป็นค่าที่เกี่ยวข้องได้
// ทำให้สามารถสร้างโครงสร้างข้อมูลแบบ Recursive ได้

// ตัวอย่างการใช้งาน `indirect` ในอีนัมเมอเรชั่น


enum ArithmeticExp {
   // กรณีที่เป็นตัวเลข
   case number(Int)
   // กรณีที่เป็นการบวก โดยมีนิพจน์ทางคณิตศาสตร์สองนิพจน์เป็นค่าที่เกี่ยวข้อง
   indirect case addition(ArithmeticExp, ArithmeticExp)
   // กรณีที่เป็นการคูณ โดยมีนิพจน์ทางคณิตศาสตร์สองนิพจน์เป็นค่าที่เกี่ยวข้อง
   indirect case multiplication(ArithmeticExp, ArithmeticExp)
}

// เพื่อพิมพ์ค่าของ `exp`, คุณต้องใช้ฟังก์ชันเพื่อแปลงค่าจากอีนัมเมอเรชั่นเป็น String

func evaluate(_ expression: ArithmeticExp) -> Int {
    switch expression {
       // ถ้านิพจน์เป็นตัวเลข, มันจะคืนค่าตัวเลขนั้นๆ
          case .number(let value):
              return value
          // ถ้านิพจน์เป็นการบวก, มันจะเรียกฟังก์ชัน `evaluate` อีกครั้งสำหรับทั้งสองนิพจน์ที่เกี่ยวข้อง
          // และบวกผลลัพธ์ของพวกเขา
          case .addition(let left, let right):
              return evaluate(left) + evaluate(right)
          // ถ้านิพจน์เป็นการคูณ, มันจะเรียกฟังก์ชัน `evaluate` อีกครั้งสำหรับทั้งสองนิพจน์ที่เกี่ยวข้อง
          // และคูณผลลัพธ์ของพวกเขา
          case .multiplication(let left, let right):
              return evaluate(left) * evaluate(right)
    }
}

// ตัวอย่าง: สร้างนิพจน์ (1 + 2) * 3 โดยใช้อีนัมเมอเรชั่น
let exp = ArithmeticExp.multiplication(.addition(.number(1), .number(2)), .number(3))
// ในตัวอย่างนี้, `addition` และ `multiplication` มีค่าที่เกี่ยวข้องเป็นอีนัมเมอเรชั่นเดียวกัน
// ทำให้สามารถสร้างนิพจน์ทางคณิตศาสตร์ที่ซับซ้อนได้

// พิมพ์ผลลัพธ์ของนิพจน์
print(evaluate(exp))
