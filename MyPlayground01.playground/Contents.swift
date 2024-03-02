import UIKit

/*
 ลูป While และ Repeat-While
 */

// While loop
//var number = 5
//while number > 0 {
//   print(number)
//   number -= 1
//}
// จะพิมพ์ 5, 4, 3, 2, 1

// Repeat-While loop
var number = 5
repeat {
   print(number)
   number -= 1
} while number > 0
// จะพิมพ์ 5, 4, 3, 2, 1
// Repeat-While, คำสั่งภายในลูปจะถูกดำเนินการก่อนและจากนั้นเงื่อนไขจะถูกประเมิน หากเงื่อนไขยังคงเป็นจริง, การทำซ้ำจะดำเนินต่อไป
