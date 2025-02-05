//
//  AddCompraViewController.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 10/10/24.
//

import Foundation
import UIKit

class AddCompraViewController: UIViewController {
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    let mainView = AddCompraView()
}
