import UIKit

/*
 คำสั่ง break ใน Swift ใช้เพื่อยุติการทำงานของคำสั่งควบคุมการไหลของโปรแกรมอย่างกะทันหัน สามารถใช้ได้ภายใน switch หรือ loop
 */

// ตัวอย่างการใช้คำสั่ง break ใน loop
//for number in 1...10 {
//   if number == 5 {
//      break // หยุด loop เมื่อ number เท่ากับ 5
//   }
//   print(number) // พิมพ์ค่าของ number
//}

// ตัวอย่างการใช้คำสั่ง break ใน switch
let someCharacter: Character = "G"
switch someCharacter {
case "a":
   print("The first letter of tha")
case "z":
   break // หยุดการทำงานของ switch เมื่อ someCharacter เท่ากับ 'z'
default:
   print("Some other character")
}
