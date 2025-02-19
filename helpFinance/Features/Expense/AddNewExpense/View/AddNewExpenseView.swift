//
//  AddNewExpenseView.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 17/02/25.
//

import Foundation
import UIKit

class AddNewExpenseView: BaseView {

    // MARK: Internal

    let expenseNameTextField: HFTextField = {
        let view = HFTextField()
        view.title = "Nome da despesa"
        view.placeHolder = "Digite o nome da despesa"
        return view
    }()

    let expenseValueTextField: HFTextField = {
        let view = HFTextField()
        view.title = "Valor da despesa"
        view.placeHolder = "Digite o valor da despesa"
        return view
    }()

    override func buildHierarchy() {
        let views = [expenseNameTextField, expenseValueTextField, UIView()]
        addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangeSubviews(views: views)
    }

    override func setupConstraints() {
        let constraints = [
            // ScrollView
            scrollView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            scrollView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            scrollView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor),
            scrollView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),

            // StackView
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            stackView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor),
        ]

        NSLayoutConstraint.activate(constraints)
    }

    override func configureView() {
        backgroundColor = .black
    }

    // MARK: Private

    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.showsVerticalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        return view

    }()

    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        return view

    }()

}
