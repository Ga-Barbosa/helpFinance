//
//  HFTextField.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 19/02/25.
//

import UIKit

class HFTextField: BaseView {

    // MARK: Internal

    var text: String? {
        return textField.text
    }

    var title: String? {
        didSet {
            titleLabel.text = title
        }
    }

    var placeHolder: String? {
        didSet {
            textField.attributedPlaceholder = NSAttributedString(
                string: placeHolder ?? "",
                attributes: [.foregroundColor: UIColor.lightGray]
            )
        }
    }

    override func buildHierarchy() {
        addSubview(titleLabel)
        addSubview(textField)
    }

    override func setupConstraints() {
        let constraints = [
            // expenseTitleLabel
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 16),
            titleLabel.rightAnchor.constraint(equalTo: rightAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),

            // expenseNametextField
            textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            textField.leftAnchor.constraint(equalTo: leftAnchor),
            textField.rightAnchor.constraint(equalTo: rightAnchor),
            textField.bottomAnchor.constraint(equalTo: bottomAnchor),
            textField.heightAnchor.constraint(equalToConstant: 45)
        ]

        NSLayoutConstraint.activate(constraints)
    }

    // MARK: Private

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white.withAlphaComponent(0.7)
        label.font = .boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let textField: UITextField = {
        let text = UITextField()
        text.tintColor = .blue
        text.font = .systemFont(ofSize: 14)
        text.textColor = .white
        let leftPaddingView = UIView(frame: .init(x: 0, y: 0, width: 16, height: 45))
        text.leftView = leftPaddingView
        text.leftViewMode = .always
        text.backgroundColor = .softBlack
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()

}
