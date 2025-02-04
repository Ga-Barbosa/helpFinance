//
//  AddCartaoViewController.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 10/10/24.
//

import Foundation
import UIKit

class AddCartaoViewController: UIViewController {
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let mainView = AddCartaoView()
}
