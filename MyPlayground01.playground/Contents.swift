import UIKit

/*
 String Literals

 String Literals คือ ชุดของอักขระที่ถูกกําหนดให้อยู่ในโค้ด โดยสามารถส่งค่าเป็นประโยค คํา หรือแค่รายการอักขระ แล้วครอบด้วยเครื่องหมายคําพูดคู่ """"
 
 
 นอกจากนี้ ยังสามารถใช้ Multiline String Literal แบบต่อเนื่องหลายบรรทัดได้ด้วย Syntax พิเศษแบบนี้:

 */

let message = "ข้อความตัวอย่าง"

// Multiline String Literal """  """
let multillineString = """
บรรทัดแรกของข้อความ
บรรทัดที่สอง
บรรทัดที่สาม
"""
print(multillineString)
