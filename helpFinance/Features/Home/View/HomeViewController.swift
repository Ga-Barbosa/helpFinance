//
//  HomeViewController.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 26/09/24.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Carteira"
    }

    let mainView = HomeView()
}
