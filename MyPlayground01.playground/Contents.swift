import UIKit

/*
 การกำหนดและเรียกใช้ฟังก์ชัน
 func และมีชื่อฟังก์ชัน, พารามิเตอร์, ประเภทการคืนค่า,
 และประเภทการคืนค่าถูกบ่งบอกด้วยลูกศร ->
 */

func meetToFriends(friendName: String) -> String {
   let meetMessage = "Hey, " + friendName + "!"
   return meetMessage
}

print(meetToFriends(friendName: "Ashok"))
print(meetToFriends(friendName: "Mohan"))

// พารามิเตอร์และค่าที่คืนค่า
func meetToFriends(friendName: String, isGreeted: Bool) -> String {
   if isGreeted {
      return "Hello again, \(friendName)"
   } else {
      return "Hey, \(friendName)"
   }
}

print(meetToFriends(friendName: "Ram", isGreeted: true))
// พิมพ์ - Hello again, Ram!
