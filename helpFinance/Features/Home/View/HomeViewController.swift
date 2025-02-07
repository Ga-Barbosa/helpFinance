//
//  HomeViewController.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 26/09/24.
//

import Foundation
import UIKit

struct HomeItem {
    let title: String
    let description: String
    let iconNamed: String
}

class HomeViewController: UIViewController {
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Carteira"

        mainView.tableView.delegate = self
        mainView.tableView.dataSource = self
    }

    private let items: [HomeItem] = [
        .init(title: "Qual", description: "quer", iconNamed: "star"),
        .init(title: "outra", description: "nao", iconNamed: "heart"),
        .init(title: "mo", description: "corre", iconNamed: "house")
    ]
    let mainView = HomeView()
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeViewCell.identifier, for: indexPath) as! HomeViewCell
        cell.configure(item: items[indexPath.row])
        return cell
    }
}
