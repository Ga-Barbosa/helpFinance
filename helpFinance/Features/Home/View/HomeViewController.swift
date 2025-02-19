//
//  HomeViewController.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 26/09/24.
//

import Floaty
import Foundation
import UIKit

// MARK: - HomeItem

struct HomeItem {
    let title: String
    let description: String
    let iconNamed: String
}

// MARK: - HomeViewController

class HomeViewController: UIViewController {

    // MARK: Lifecycle

    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Carteira"

        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self

        mainView.expenseButton.handler = goToAddNewExpense(_:)
    }

    // MARK: Private

    private let mainView = HomeView()
    private let viewModel = HomeViewModel()

    private func goToAddNewExpense(_ sender: FloatyItem) {
        let controller = AddNewExpenseViewController()
        navigationController?.pushViewController(controller, animated: true)
    }

}

// MARK: UITableViewDelegate, UITableViewDataSource

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeViewCell.identifier, for: indexPath) as! HomeViewCell
        cell.configure(item: viewModel.items[indexPath.row])
        return cell
    }

}
