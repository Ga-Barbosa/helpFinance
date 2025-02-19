//
//  AddNewExpenseViewController.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 17/02/25.
//

import Foundation
import UIKit

class AddNewExpenseViewController: UIViewController {

    // MARK: Lifecycle

    override func loadView() {
        view = mainView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Adicionar despesa"
    }
    // MARK: Private

    private let mainView = AddNewExpenseView()

}
