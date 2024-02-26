import UIKit

/*
 กลุ่ม (Set) เป็นคอลเลกชันที่เก็บค่าที่แตกต่างกัน ที่เป็นประเภทเดียวกัน และไม่มีลำดับ
 Set<Element> โดยที่ Element คือประเภทขององค์ประกอบที่อนุญาตให้เก็บไว้
 Set คืออะไร? Set คือกลุ่มของข้อมูลที่ไม่มีการซ้ำ และข้อมูลใน set จะเรียงลำดับอัตโนมัติ และไม่มีอันดับ
 */
var characters = Set<Character>() //  สร้างตัวแปร characters  เป็น Set<Character>  โดยไม่มีค่าเริ่มต้น

//  เพิ่มตัวอักษรลงใน set
characters.insert("a")
characters.insert("b")
characters.insert("c")

//  ตรวจสอบว่า set  ว่างหรือไม่
if characters.isEmpty {
   print("Set ว่าง")
} else {
   print("Set มีข้อมูล")
}

//  ลบตัวอักษรออกจาก set
characters.remove("a")

//  ตรวจสอบว่ามีตัวอักษรที่ต้องการใน set  หรือไม่
if characters.contains("b") {
   print("มีตัวอักษร b")
} else {
   print("ไม่มีตัวอักษร b")
}

//  ตรวจสอบว่า set  มีตัวอักษรที่ไม่มีอยู่ใน set  หรือไม่
if !characters.contains("d") {
   print("ไม่มีตัวอักษร d")
} else {
   print("มีตัวอักษร d")
}
