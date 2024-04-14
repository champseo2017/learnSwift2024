import UIKit

/*
 - `globalVariable` ถูกประกาศนอกฟังก์ชันใดๆ จึงเป็นตัวแปรโกลบอลที่สามารถเข้าถึงได้จากทุกที่ในโปรแกรม
 - `localVariable` ถูกประกาศภายในฟังก์ชัน `someFunction()` จึงเป็นตัวแปรโลคัลที่สามารถเข้าถึงได้เฉพาะภายในฟังก์ชันนั้นเท่านั้น
 - เมื่อเรียกใช้ฟังก์ชัน `someFunction()`:
   - มันพิมพ์ค่าของ `localVariable` ซึ่งเป็น 20
   - มันยังสามารถเข้าถึง `globalVariable` และพิมพ์ค่าของมัน ซึ่งเป็น 10
 - นอกฟังก์ชัน เราสามารถพิมพ์ค่าของ `globalVariable` ได้ เพราะมันเป็นตัวแปรโกลบอล
 - อย่างไรก็ตาม เราไม่สามารถเข้าถึง `localVariable` จากภายนอกฟังก์ชันได้ เพราะมันเป็นตัวแปรโลคัลที่มีขอบเขตจำกัดอยู่ภายในฟังก์ชันเท่านั้น

 สรุปได้ว่า ตัวแปรโกลบอลสามารถเข้าถึงได้จากทุกที่ในโปรแกรม ในขณะที่ตัวแปรโลคัลถูกจำกัดขอบเขตอยู่ภายในฟังก์ชัน, เมธอด หรือ closure ที่มันถูกประกาศ

 */

var globalVariable = 10 // ตัวแปรโกลบอล

func someFunction() {
   var localVariable = 20 // ตัวแปรโลคัล
   print("Local variable inside function: \(localVariable)")
   
   print("Global variable inside function: \(globalVariable)")
}

someFunction() // เรียกใช้ฟังก์ชัน
// Output:
// Local variable inside function: 20
// Global variable inside function: 10

print("Global variable outside function: \(globalVariable)")
// Output: Global variable outside function: 10


// print("Local variable outside function: \(localVariable)")
// ❌ Error: localVariable ไม่สามารถเข้าถึงได้จากภายนอกฟังก์ชัน

/*
 
 */
