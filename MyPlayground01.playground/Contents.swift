import UIKit

/*
 Control flow
 */

// For-in loop
//for index in 1...5 {
//   print("\(index) times 5 is \(index * 5)")
//}

// ใช้ for-in loop เพื่อทำซ้ำโค้ดกับข้อมูลที่เปลี่ยนแปลงไป

// While loop
//var n = 2
//while n < 100 {
//   n *= 2
//}
//print(n)
// ใช้ while loop เพื่อทำซ้ำโค้ดจนกว่าเงื่อนไขจะเป็น false

// if
//var temperature = 30
//if temperature > 25 {
//   print("It' s warm")
//} else {
//   print("It's not that warm")
//}
// ใช้ if เพื่อเลือกทำโค้ดบางส่วนตามเงื่อนไข

// Guard
//func greet(person: [String: String]) {
//   guard let name = person["name"] else {
//      return
//   }
//   print("Hello \(name)!")
//}
//// ตัวอย่างการเรียกใช้ฟังก์ชัน greet
//greet(person: ["name": "John"]) // จะแสดง "Hello John!"
//greet(person: ["age" : "30"]) // ไม่แสดงอะไรเลย เพราะไม่มี key "name"

// Switch
//let someCharacter: Character = "z"
//switch someCharacter {
//case "a", "e", "i", "o", "u" :
//   print("\(someCharacter) is a vowel")
//default:
//   print("\(someCharacter) is not a vowel")
//}
// ใช้ switch เพื่อเลือกทำโค้ดบางส่วนตามค่าของตัวแปร

// Break
//var count = 0
//while true {
//   count += 1
//   if count > 3 {
//      break
//   }
//   print(count)
//}
// ใช้ break เพื่อออกจาก loop

// Continue
for i in 1...5 {
   if i % 2 == 0 {
      continue
   }
   print(i)
}
// ใช้ continue เพื่อข้ามไปยังการทำซ้ำถัดไปของ loop
