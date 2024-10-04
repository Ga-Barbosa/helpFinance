//
//  BaseView.swift
//  helpFinance
//
//  Created by Joao Duarte on 04/10/24.
//

import UIKit

class BaseView: UIView {

    // MARK: Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        applyViewCode()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyViewCode()
    }

    // MARK: Internal

    func buildHierarchy() {}
    func setupConstraints() {}
    func configureView() {}

    // MARK: Private

    private func applyViewCode() {
        buildHierarchy()
        setupConstraints()
        configureView()
    }
}
