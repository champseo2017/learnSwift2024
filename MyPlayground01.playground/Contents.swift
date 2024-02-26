import UIKit

/*
 ใน Swift, ฐานข้อมูล (Dictionary) เก็บความสัมพันธ์ระหว่างคีย์ (keys) และค่า (values)
 */
//  สร้างฐานข้อมูลว่างของประเภท [String: String]
// ส่วน [:] ใน var roads: [String: String] = [:] นั้นเป็น syntax ที่ใช้ในการสร้างฐานข้อมูล (Dictionaries) ว่างใน Swift. ถ้าเราต้องการสร้างฐานข้อมูลที่ไม่มีคู่คีย์-ค่าใดๆ ในตอนแรก เราจะใช้ [:]
var roads: [String: String] = [:]

//  เพิ่มคู่คีย์-ค่าลงในฐานข้อมูล
roads["ABC"] = "Grand Trunk Road"
roads["BCE"] = "Delhi"

//  เพิ่มคู่คีย์-ค่าใหม่ด้วย syntax  ของ subscript
roads["PVC"] = "MJ Road"

//  แสดงจำนวนของคู่คีย์-ค่าในฐานข้อมูล
print(roads.count)

//  วนผ่านคู่คีย์-ค่าในฐานข้อมูลด้วย loop for-in
for (roadsCode, roadsName) in roads {
   print("\(roadsCode): \(roadsName)")
}
