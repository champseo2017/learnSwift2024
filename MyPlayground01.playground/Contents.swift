import UIKit

/*
 ความสามารถในการเปลี่ยนแปลงของคอลเลกชัน (Mutability) ใน Swift
 ใน Swift การทําให้ Array, Set และ Dictionary เป็น Immutable Collection ตลอดเวลาถือเป็นแนวปฏิบัติที่ดี

 การใช้ Immutable Collection จะช่วยเพิ่มประสิทธิภาพของคอลเลกชัน และทําให้การใช้หน่วยความจําและการทํางานมีประสิทธิภาพและคาดเดาได้มากขึ้น
 
 - Mutable Collection คือ คอลเลกชันที่สามารถเปลี่ยนแปลงแก้ไขเนื้อหาภายในได้หลังจากสร้างแล้ว เช่น เพิ่ม ลบ หรือแก้ไขค่า
 - Immutable Collection คือ คอลเลกชันที่ไม่สามารถเปลี่ยนแปลงแก้ไขได้อีก หลังจากสร้างแล้วค่าจะคงที่
 ใน Swift จึงแนะนําให้ใช้ Immutable Collection เพื่อประสิทธิภาพสูงสุด
 */

// Mutable Collection
var mutableArry = [1, 2, 3]
mutableArry.append(4)
// [1, 2, 3, 4]

var mutableSet = Set([1, 2, 3])
mutableSet.insert(4)
// [4, 2, 1, 3]

var mutableDice = ["a": 1, "b": 2]
mutableDice["c"] = 3
// ["a": 1, "b": 2, "c": 3]

// Immutable Collection
let array1 = [1, 2, 3]
// เพิ่มค่าโดยสร้าง Instance ใหม่
let array2 = array1 + [4]
// [1, 2, 3, 4]

// Immutable Dictionary
let dict1 = ["a": 1, "b": 2]
// เพิ่มค่าโดยสร้าง Instance ใหม่
let dict2 = dict1.merging(["a": 3]) {$1}
// $1 คือ closure syntax ที่ใช้กําหนดการ Handle Conflict ในกรณีที่ Key ซ้ํากันใน Dictionary
// การกําหนด Closure { $1 } จะเป็นการ แทน ค่า value ที่ถูกเพิ่มเข้าไปใหม่ใน key ที่มีอยู่แล้ว
// merging จะทําการ merge dict1 กับ dict ที่ส่งเข้ามาเป็น parameter โดยไม่สนใจ order ของ key
// ["a": 3, "b": 2]

// Immutable Set
let immutableSet = Set([1, 2, 3])

// เพิ่มค่าโดยสร้าง Set ใหม่
let newSet = immutableSet.union([4])
print(newSet)
