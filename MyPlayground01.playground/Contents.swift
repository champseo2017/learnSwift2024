import UIKit

/*
 ตัวดําเนินการ Nil-Coalescing

 เพื่อหลีกเลี่ยงการ Crash โปรแกรมจากค่า nil Swift มีตัวดําเนินการ Nil-Coalescing สําหรับใช้กับ Optional

 ตัวดําเนินการนี้เขียนเป็น x ?? y

 ใช้เพื่อจัดการค่า nil ได้ดีขึ้น โดยจะประเมินค่า x ว่าเป็น nil หรือไม่ ถ้า x มีค่า จะ Unwrap Optional และคืนค่านั้นกลับมา ถ้า x เป็น nil จะคืนค่า y ทําให้เขียนโค้ดได้กระชับและอ่านง่ายขึ้น

 ตัวอย่าง:

 ```
 var x: Int? = nil
 var y = 10
 var safeValue = x ?? y // safeValue = 10
 ```

 หมายเหตุ: ถ้า x ไม่ใช่ nil ค่า y จะไม่ถูกประเมิน เรียกว่า Short-circuit Evaluation
 */


var x: Int? = nil
var y = 10
var safeValue = x ?? y

print(safeValue)
