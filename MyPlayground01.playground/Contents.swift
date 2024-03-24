import UIKit

/*
 คลาส, โครงสร้าง, และอีนัมเมอเรชั่น

 */

// คลาส
class Vehicle {
   var currentSpeed = 0.0
   func description() -> String {
      return "กำลังเดินทางด้วยความเร็ว \(currentSpeed) กิโลเมตรต่อชั่วโมง"
   }
}

// โครงสร้าง
struct Point {
   var x = 0.0, y = 0.0
}

// อีนัมเมอเรชั่น
enum CompassPoint {
   case north
   case south
   case east
   case west
}

// สร้างอินสแตนซ์ของคลาส
let somVehicle = Vehicle()

// สร้างอินสแตนซ์ของโครงสร้าง
var somePoint = Point(x: 10.0, y: 12.0)

// ใช้งานอีนัมเมอเรชั่น
var directionToHead = CompassPoint.west
print(directionToHead)
