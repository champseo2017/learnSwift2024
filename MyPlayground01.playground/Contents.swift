import UIKit

/*
 Escaping closures
 Serial ใช้เมื่อต้องการควบคุมลำดับการทำงานหรือป้องกันการแข่งขันของข้อมูล
 Concurrent ใช้เมื่อต้องการประมวลผลหลายงานพร้อมกันเพื่อเพิ่มความเร็วในการทำงาน
 .main หมายถึง main dispatch queue ซึ่งเป็น serial queue ที่ใช้สำหรับการอัปเดต UI และการทำงานที่เกี่ยวข้องกับ UI
 การใช้ @escaping มีประโยชน์ในสถานการณ์ที่คุณต้องการให้งานบางอย่างทำเมื่อเงื่อนไขหรือเหตุการณ์บางอย่างเกิดขึ้น ไม่ว่าจะเป็นการโหลดข้อมูลจากเครือข่าย, การรอผลลัพธ์จากการคำนวณที่ใช้เวลานาน, หรืออื่นๆ
 */

func delayedPrint(message: String, delay: TimeInterval, completion: @escaping () -> Void) {
   // รอเวลาที่กำหนด (เหมือนรอพิซซ่า)
   DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
      // พิมพ์ข้อความ (เหมือนพิซซ่ามาถึง)
      print(message)
      // เรียกใช้งาน completion (เหมือนไปรับพิซซ่า)
      completion()
   }
}

// เรียกใช้ฟังก์ชัน
delayedPrint(message: "Hello, World!", delay: 2.0, completion: {
   // สิ่งที่ทำหลังจากพิมพ์ข้อความ (เหมือนกิจกรรมหลังจากรับพิซซ่า)
   print("Printed after delay")
})
