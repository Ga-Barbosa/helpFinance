//
//  LogIn.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 26/09/24.
//

import Foundation
import UIKit

class LongInView: BaseView {

    var planoDefundo: UIImageView = {
        var img = UIImageView()
        img.image = UIImage(named: "back")
        img.translatesAutoresizingMaskIntoConstraints = false
        img.contentMode = .scaleAspectFill
        return img
    }()

    var txtWelcome: UILabel = {
        var txt = UILabel()
        txt.textColor = .white
        txt.textAlignment = .center
        txt.text = "Faça logIn com o Google\npara ter controle financeiro"
        txt.numberOfLines = 0
        txt.font = .boldSystemFont(ofSize: 16)
        txt.translatesAutoresizingMaskIntoConstraints = false
        return txt
    }()

    var gambi: UILabel = {
        var lbl = UILabel()
        lbl.backgroundColor = .white
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.layer.cornerRadius = 20
        lbl.layer.masksToBounds = true
        return lbl
    }()

    override func buildHierarchy() {
        addSubview(planoDefundo)
        addSubview(gambi)
        addSubview(txtWelcome)
    }

    override func setupConstraints() {
        NSLayoutConstraint.activate([
            planoDefundo.topAnchor.constraint(equalTo: topAnchor),
            planoDefundo.leadingAnchor.constraint(equalTo: leadingAnchor),
            planoDefundo.trailingAnchor.constraint(equalTo: trailingAnchor)

        ])

        NSLayoutConstraint.activate([
            gambi.topAnchor.constraint(equalTo: topAnchor, constant: 250),
            gambi.centerXAnchor.constraint(equalTo: centerXAnchor),
            gambi.heightAnchor.constraint(equalToConstant: 50),
            gambi.widthAnchor.constraint(equalToConstant: 50)
        ])

        NSLayoutConstraint.activate([
            txtWelcome.topAnchor.constraint(equalTo: gambi.bottomAnchor, constant: 10),
            txtWelcome.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }

    override func configureView() {
        backgroundColor = .blue
    }
}
