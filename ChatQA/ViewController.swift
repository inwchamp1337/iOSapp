//
//  ViewController.swift
//  ChatQA
//
//  Created by Csy on 17/2/2568 BE.
//
import UIKit

class ViewController: UIViewController {
    let label = CustomLabel(text: "Hello, world!", fontSize: 24, textColor: .black)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ตั้งค่าพื้นหลัง View
        view.backgroundColor = .white
        
        // สร้าง CustomLabel
        
        let labelRight = CustomLabel(text: "Powered by iOS", fontSize: 12, textColor: .green)
        // เพิ่ม CustomLabel ลงใน View
        view.addSubview(label)
        view.addSubview(labelRight)
        // ตั้งค่า Auto Layout เพื่อจัดวาง Label ไว้กลางหน้าจอ
        // สร้าง CustomUIButton
        
        let button1 = CustomUIButton(title: "Change Background", tapAction: { [weak self] in
            self?.view.backgroundColor = UIColor(
             red: CGFloat.random(in: 0...1),
             green: CGFloat.random(in: 0...1),
             blue: CGFloat.random(in: 0...1),
             alpha: 1.0
         ) // เปลี่ยนสีพื้นหลังเป็นสีส้ม
         })
        
        let button2 = CustomUIButton(title: "Change Text", tapAction: { [weak self] in
                    // Toggle ข้อความระหว่างข้อความที่เก็บใน label
                    self?.label.text = (self?.label.text == "Hello, world!") ? "Text Changed!" : "Hello, world!"
                })

       // กำหนดการกระทำเมื่อกดปุ่ม
        
        
        view.addSubview(button1)
        view.addSubview(button2)
        // ตั้งค่า Constraints สำหรับ label (อยู่กลางจอ)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.widthAnchor.constraint(lessThanOrEqualToConstant: 300), // จำกัดความกว้างสูงสุด
            label.heightAnchor.constraint(equalToConstant: 30) // กำหนดความสูง
        ])

        // ตั้งค่า Constraints สำหรับ labelRight (อยู่มุมขวาล่าง)
        NSLayoutConstraint.activate([
            labelRight.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            labelRight.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            labelRight.widthAnchor.constraint(lessThanOrEqualToConstant: 200), // จำกัดความกว้างสูงสุด
            labelRight.heightAnchor.constraint(equalToConstant: 30) // กำหนดความสูง
        ])

        // ตั้งค่า Constraints สำหรับ button1 (อยู่เหนือ label 50 points)
        NSLayoutConstraint.activate([
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50),
            button1.widthAnchor.constraint(equalToConstant: 200),
            button1.heightAnchor.constraint(equalToConstant: 50),
            button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button2.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100)
        ])
        
        
        
        
    }
    
}

