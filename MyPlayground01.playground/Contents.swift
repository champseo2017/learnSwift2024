import UIKit

/*
 การเชื่อมต่อสตริงและอักขระ (Concatenated Strings)
 
 สามารถเชื่อมสตริงเข้าด้วยกันได้ โดยใช้ตัวดําเนินการ + เหมือนกับที่เราใช้กับตัวเลขในการคํานวณ
 */
let string1 = "Hello"
let string2 = " World"
var combined = string1 + string2

print(combined)

// นอกจากนี้ ยังสามารถเติมอักขระเข้าไปใน String ได้ด้วย method append()
var text = "Hello"
text.append("!")
print(text)
