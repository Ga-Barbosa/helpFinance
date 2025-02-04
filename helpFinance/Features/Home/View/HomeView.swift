//  Created by João Vitor Duarte Mariucio on 26/09/24.
//

import Foundation
import UIKit

class HomeView: BaseView {
    
//    var planoDefundo: UIImageView = {
//        var img = UIImageView()
//        img.image = UIImage(named: "back")
//        img.translatesAutoresizingMaskIntoConstraints = false
//        img.contentMode = .scaleAspectFill
//        return img
//    }()
    
    var lblCarteira : UILabel = {
        var lbl = UILabel()
        lbl.text = "Carteira"
        lbl.textColor = .white
        lbl.font = .boldSystemFont(ofSize: 30)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
   
    var userImg: UIImageView = {
        var img = UIImageView()
        img.tintColor = .blue
        img.image = UIImage(named: "usericon")
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()

    var card : UILabel = {
        var lbl = UILabel()
        lbl.backgroundColor = .darkGray
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.layer.cornerRadius = 20
        lbl.layer.masksToBounds = true
        return lbl
    }()
    
    var card2 : UILabel = {
        var lbl = UILabel()
        lbl.backgroundColor = .darkGray
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.layer.cornerRadius = 20
        lbl.layer.masksToBounds = true
        return lbl
    }()
    
    var card3 : UILabel = {
        var lbl = UILabel()
        lbl.backgroundColor = .darkGray
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.layer.cornerRadius = 20
        lbl.layer.masksToBounds = true
        return lbl
    }()
    
    var card4 : UILabel = {
        var lbl = UILabel()
        lbl.backgroundColor = .darkGray
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.layer.cornerRadius = 20
        lbl.layer.masksToBounds = true
        return lbl
    }()
    
    var btnAdicionar : UIButton = {
        var btn = UIButton()
        btn.setTitle("+", for: .normal)
        btn.setTitleColor(.blue, for: .normal)
        btn.sizeToFit()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 20
        btn.layer.masksToBounds = true
        return btn
    }()
    
    var btnCartao : UIButton = {
        var btn = UIButton()
        btn.setTitle("+", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .green
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 20
        btn.layer.masksToBounds = true
        return btn
    }()
    
    var btnCompra : UIButton = {
        var btn = UIButton()
        btn.setTitle("+", for: .normal)
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = .red
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.layer.cornerRadius = 20
        btn.layer.masksToBounds = true
        return btn
    }()
    
    
    // MARK: Internal

    override func buildHierarchy() {
//        addSubview(planoDefundo)
        addSubview(lblCarteira)
        addSubview(userImg)
        addSubview(card)
        addSubview(card2)
        addSubview(card3)
        addSubview(card4)
        addSubview(btnAdicionar)
        addSubview(btnCartao)
        addSubview(btnCompra)
    }

    override func setupConstraints() {
//        NSLayoutConstraint.activate([
//            planoDefundo.topAnchor.constraint(equalTo: topAnchor),
//            planoDefundo.leadingAnchor.constraint(equalTo: leadingAnchor),
//            planoDefundo.trailingAnchor.constraint(equalTo: trailingAnchor)
//        ])
        
        NSLayoutConstraint.activate([
            lblCarteira.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            lblCarteira.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
      
        NSLayoutConstraint.activate([
            userImg.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            userImg.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            userImg.heightAnchor.constraint(equalToConstant: 40),
            userImg.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            card.topAnchor.constraint(equalTo: topAnchor, constant: 120),
            card.heightAnchor.constraint(equalToConstant: 80),
            card.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            card.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            card2.topAnchor.constraint(equalTo: card.bottomAnchor, constant: 20),
            card2.heightAnchor.constraint(equalToConstant: 80),
            card2.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            card2.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            card3.topAnchor.constraint(equalTo: card2.bottomAnchor, constant: 20),
            card3.heightAnchor.constraint(equalToConstant: 80),
            card3.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            card3.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
       
        NSLayoutConstraint.activate([
            card4.topAnchor.constraint(equalTo: card3.bottomAnchor, constant: 20),
            card4.heightAnchor.constraint(equalToConstant: 80),
            card4.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            card4.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            btnAdicionar.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40),
            btnAdicionar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            btnAdicionar.heightAnchor.constraint(equalToConstant: 40),
            btnAdicionar.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            btnCartao.bottomAnchor.constraint(equalTo: btnAdicionar.topAnchor, constant: -20),
            btnCartao.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            btnCartao.heightAnchor.constraint(equalToConstant: 40),
            btnCartao.widthAnchor.constraint(equalToConstant: 40)
        ])
        
        NSLayoutConstraint.activate([
            btnCompra.bottomAnchor.constraint(equalTo: btnCartao.topAnchor, constant: -20),
            btnCompra.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            btnCompra.heightAnchor.constraint(equalToConstant: 40),
            btnCompra.widthAnchor.constraint(equalToConstant: 40)
        ])
    }

    override func configureView() {
        backgroundColor = .black
    }

}
