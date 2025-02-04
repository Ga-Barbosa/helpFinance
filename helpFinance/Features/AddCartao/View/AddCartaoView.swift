//
//  AddCartaoView.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 10/10/24.
//

import Foundation
import UIKit

class AddCartaoView: BaseView {
    
    var nomeCartao: UILabel = {
        var lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
   
    var vencimentoCartao: UILabel = {
        var lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    var limiteCartao: UILabel = {
        var lbl = UILabel()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override func buildHierarchy() {

    }

    override func setupConstraints() {
       
    }

    override func configureView() {
        backgroundColor = .blue
    }
}
