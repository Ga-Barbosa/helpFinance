//
//  HomeView.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 26/09/24.
//

import Foundation
import UIKit

class Homeview: BaseView {

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

    override func buildHierarchy() {}

    override func setupConstraints() {}

    override func configureView() {
        backgroundColor = .white
    }

}
