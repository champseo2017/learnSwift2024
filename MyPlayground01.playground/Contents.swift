import UIKit

/*
 Non-escaping closure คือ closure ที่ต้องถูกเรียกใช้ภายในขอบเขตของฟังก์ชันที่ครอบคลุมมัน และไม่สามารถถูกเก็บไว้เพื่อใช้งานในภายหลังได้
 */

func performOperation(_ operation: () -> Void) {
   print("Performing operation...")
   operation()
   print("Operation completed.")
}

performOperation {
   print("Executing closure")
}

/*
 ในตัวอย่างนี้, performOperation เป็นฟังก์ชันที่รับ closure เป็นอาร์กิวเมนต์ ซึ่ง closure นี้จะถูกเรียกใช้ทันทีภายในฟังก์ชัน performOperation ก่อนที่ฟังก์ชันจะจบการทำงาน นี่คือลักษณะของ non-escaping closure ที่ไม่สามารถถูกเก็บหรือเรียกใช้นอกขอบเขตของฟังก์ชันที่มันถูกส่งเข้าไป
 */
