//
//  BaseTableViewCell.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 06/02/25.
//

import UIKit

class BaseTableViewCell: UITableViewCell {

    // MARK: Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        applyViewCode()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        applyViewCode()
    }

    // MARK: Internal

    static var identifier: String {
        return String(describing: type(of: self))
    }

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
