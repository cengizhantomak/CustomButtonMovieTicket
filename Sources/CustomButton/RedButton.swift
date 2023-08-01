import UIKit

public class RedButton: UIButton {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtonUI()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupButtonUI()
    }

    public func setupButtonText(text: String) {
        setTitle(text, for: .normal)
    }

    func setupButtonUI() {
        layer.cornerRadius = 4
        backgroundColor = UIColor(named: "buttonRed")

        titleLabel?.font = UIFont(name: "SFProText-Semibold", size: 16)
        setTitleColor(UIColor.white, for: .normal)

        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 48).isActive = true
    }
}
