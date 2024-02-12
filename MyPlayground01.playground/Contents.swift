import UIKit

/*
 One-sided Range คือ Range ที่มีค่าเพียงด้านเดียว
 */

 let numbers = [1, 2, 3, 4, 5]
// จะได้ Range ที่เริ่มต้นที่ index 2 (ค่า 3) ไปจนสุด array
for n in numbers[2...] {
   print(n)
}

// จะได้ Range ตั้งแต่ต้น array จนถึง index 2 (ค่า 3)
for n in numbers[...2] {
   print(n)
}
