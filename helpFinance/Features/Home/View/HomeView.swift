//  Created by João Vitor Duarte Mariucio on 26/09/24.
//

import Floaty
import Foundation
import UIKit

class HomeView: BaseView {
    var floatyButton: Floaty = {
        var view = Floaty()
        return view
    }()

    var expenseButton: FloatyItem = .create(from: .expense)
    var expenseCreditCardButton: FloatyItem = .create(from: .expenseCreditCard)
    var incomingButton: FloatyItem = .create(from: .incoming)
    var transferenceButton: FloatyItem = .create(from: .tranference)

    var tableView: UITableView = {
        var view = UITableView()
        view.backgroundColor = .black
        view.register(HomeViewCell.self, forCellReuseIdentifier: HomeViewCell.identifier)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    // MARK: Internal

    override func buildHierarchy() {
        addSubview(tableView)
        addSubview(floatyButton)
    }

    override func setupConstraints() {
        var constraints = [NSLayoutConstraint]()

        let tableViewConstraints = [
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leftAnchor.constraint(equalTo: leftAnchor),
            tableView.rightAnchor.constraint(equalTo: rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ]

        constraints.append(contentsOf: tableViewConstraints)

        NSLayoutConstraint.activate(constraints)
    }

    override func configureView() {
        backgroundColor = .black
        floatyButton.addItem(item: expenseButton)
        floatyButton.addItem(item: expenseCreditCardButton)
        floatyButton.addItem(item: incomingButton)
        floatyButton.addItem(item: transferenceButton)
    }
}
