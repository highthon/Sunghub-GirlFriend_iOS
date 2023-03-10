import UIKit

final class MainButton: UIButton {
    var text: String {
        get {
            return ""
        } set(newValue) {
            self.setTitle(newValue, for: .normal)
        }
    }
    
    override var isEnabled: Bool {
        didSet {
            self.backgroundColor = isEnabled ? .ColorSystem.Color.main5.color : .ColorSystem.Color.main1.color
        }
    }
    
    //MARK: - Initalizer
    init() {
        super.init(frame: .zero)
        setUI()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Method
    func setUI() {
        self.isEnabled = false
        self.backgroundColor = .ColorSystem.Color.main1.color
        self.layer.cornerRadius = 8
        self.clipsToBounds = true
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        self.titleLabel?.textColor = UIColor.white
    }
}
