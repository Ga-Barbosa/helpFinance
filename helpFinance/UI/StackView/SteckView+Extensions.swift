//
//  SteckView+Extensions.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 19/02/25.
//

import UIKit

extension UIStackView {

    func addArrangeSubviews(views: [UIView]) {
        for view in views {
            addArrangedSubview(view)
        }
    }
}
