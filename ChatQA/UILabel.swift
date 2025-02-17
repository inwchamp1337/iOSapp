import UIKit

class CustomLabel: UILabel {
    // MARK: - Initializers
    init(text: String, fontSize: CGFloat, textColor: UIColor) {
            super.init(frame: .zero)
            self.text = text
            self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
            self.textColor = textColor
            self.textAlignment = .center
            self.translatesAutoresizingMaskIntoConstraints = false
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
