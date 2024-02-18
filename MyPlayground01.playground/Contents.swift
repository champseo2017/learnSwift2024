import UIKit

/*
 ตัวดําเนินการตรรกะ (Logical Operators)

 ตัวดําเนินการตรรกะใช้สําหรับดัดแปลงหรือรวมค่าตรรกะ (true และ false)

 Swift รองรับตัวดําเนินการตรรกะ 3 ตัวดังนี้

 1. ตรรกะเท็จ (Logical NOT)  !x

 2. ตรรกะและ (Logical AND) x && y

 3. ตรรกะหรือ (Logical OR) x || y

  ตัวดําเนินการเหล่านี้จะคืนค่า Boolean เพื่อใช้ในการตัดสินใจหรือควบคุมโค้ดต่อไป
 
 */

let a = true
let b = false

// Logical NOT
let x = !a // false
let y = !b // true

// Logical AND
let z = a && b // false


// Logical OR
let k = a || b // true

// Usage in if statement
let age = 16
if age >= 20 && age <= 30 {
   print("age is between 20 and 30")
} else {
   print("age is not between 20 and 30")
}
