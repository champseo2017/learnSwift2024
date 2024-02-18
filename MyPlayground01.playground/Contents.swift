import UIKit

/*
 สตริงว่าง (Empty String)
 ใน Swift สามารถสร้าง String ว่างได้ง่ายๆ 2 วิธีดังนี้
 
 */

// 1. กําหนด String Literal ว่าง "" ให้กับตัวแปร
// var empty = ""

// 2. ใช้ Initializer เพื่อสร้าง Instance ของ String ที่ไม่มีค่า
var empty = String()

// การใช้ String ว่าง มีประโยชน์อย่างมากในกรณีที่ต้องแทนค่าว่างๆ ใน String
var firstName = "" // ยังไม่ได้กรอกชื่อ
