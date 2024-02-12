import UIKit

/*
 ตัวดําเนินการเงื่อนไขแบบสามตัว (Ternary Conditional Operator)

 เป็นตัวดําเนินการใน Swift ที่ประกอบด้วย 3 ส่วน คล้ายกับคําถามที่มีคําตอบให้เลือก 2 คําตอบ มีรูปแบบดังนี้

 query ? answer1 : answer2

 โดยหาก query เป็นจริง จะคืนค่า answer1 กลับมา แต่ถ้าเป็นเท็จจะคืนค่า answer2

 ตัวอย่าง:

 var height = cellIndex == 0 ? heightCell1 : heightOtherCell

 ช่วยทําให้โค้ดกระชับและอ่านง่ายขึ้น แต่ควรระวังการใช้มากเกินไปในบรรทัดเดียว ซึ่งอาจทําให้อ่านยาก ควรหาจุดสมดุลระหว่างความกระชับและความชัดเจนของโค้ด
 */

let heightCell1 = 50
let heightCell2 = 40
let heightCell3 = 30

let currentCellIndex = 2

let height = currentCellIndex == 1 ? heightCell1 : currentCellIndex == 2 ? heightCell2 : heightCell3
print(height)
