import UIKit

/*
 Half-Open Range Operator (x..<y)

 "หมายความว่า" ตัวดําเนินการ Half-Open Range จะกําหนด Range ตั้งแต่ค่า x ไปจนถึงค่าก่อน y โดยไม่รวมค่า y เอง

 ยกตัวอย่าง:
 1...5 หมายถึง Range ตั้งแต่ 1 ถึง 5 รวม 5 ด้วย
 แต่ 1..<5 หมายถึง Range ตั้งแต่ 1 ถึง 4 เท่านั้น ไม่ได้รวมค่า 5

 นั่นคือ ความหมายและความแตกต่างระหว่าง Closed Range กับ Half Open Range ครับ


 */

for index in 1..<3 {
   print("\(index) times 3 is \(index * 3)")
}
