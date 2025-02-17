import UIKit

class CustomUIButton: UIButton {
    // MARK: - Properties
    private var tapAction: (() -> Void)? // Closure สำหรับการกดปุ่ม
    
    // MARK: - Initializers
    init(title: String = "Button",
         titleColor: UIColor = .white,
         backgroundColor: UIColor = .systemBlue,
         cornerRadius: CGFloat = 10,
         tapAction: (() -> Void)? = nil) {
        
        self.tapAction = tapAction
        super.init(frame: .zero)
        
        setupButton(title: title, titleColor: titleColor, backgroundColor: backgroundColor, cornerRadius: cornerRadius)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setupButton(title: String, titleColor: UIColor, backgroundColor: UIColor, cornerRadius: CGFloat) {
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        layer.cornerRadius = cornerRadius
        titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        // ตั้งค่า Auto Layout
        translatesAutoresizingMaskIntoConstraints = false
        
        // เพิ่มการกระทำเมื่อกดปุ่ม
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    // MARK: - Actions
    @objc func buttonTapped() {
        tapAction?() // เรียก Closure เมื่อปุ่มถูกกด
    }
    
    // MARK: - Public Methods
    func setTapAction(_ action: @escaping () -> Void) {
        self.tapAction = action
    }
}
