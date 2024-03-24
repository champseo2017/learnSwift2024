import UIKit

/*
 คลาส, โครงสร้าง, และอีนัมเมอเรชั่น

 */

// คลาส
class Animal {
   var name: String
   var age: Int
   
   init(name: String, age: Int) {
      self.name = name
      self.age = age
   }
   
   func description() -> String {
      return "\(name) อายุ \(age) ปี"
   }
}

// โครงสร้าง
struct Coordinate {
   var x: Double
   var y: Double
}

// อีนัมเมอเรชั่น
enum Direction {
   case up
   case down
   case left
   case right
}

// สร้างอินสแตนซ์ของคลาส
let myPet = Animal(name: "Milo", age: 5)

// สร้างอินสแตนซ์ของโครงสร้าง
var point = Coordinate(x: 10.0, y: 20.0)

// ใช้งานอีนัมเมอเรชั่น
var moveDirection = Direction.up
