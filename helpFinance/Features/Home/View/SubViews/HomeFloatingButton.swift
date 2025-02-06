//
//  HomeFloatingButton.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 05/02/25.
//

import Foundation
import UIKit
import Floaty

enum HomeFloatingButton {
    case expense, expenseCreditCard, incoming, tranference

    var title: String {
        switch self {
        case .expense:
            return "Despesa"
        case .expenseCreditCard:
            return "Despesa Cartão"
        case .incoming:
            return "Receita"
        case .tranference:
            return "Transferência"
        }
    }

    var icon: UIImage? {
        switch self {
        case .expense:
            return UIImage(named: "expense")
        case .expenseCreditCard:
            return UIImage(named: "credit_card_expense")
        case .incoming:
            return UIImage(named: "incoming")
        case .tranference:
            return UIImage(named: "transfer")
        }
    }

    var buttonColor: UIColor {
        switch self {
        case .expense:
            return .red
        case .expenseCreditCard:
            return .red
        case .incoming:
            return .green
        case .tranference:
            return .blue
        }
    }

    var iconTintColor: UIColor {
        switch self {
        default: return .white
        }
    }
}

extension FloatyItem {
    static func create(from button: HomeFloatingButton) -> FloatyItem {
        let item = FloatyItem()
        item.title = button.title
        item.buttonColor = button.buttonColor
        item.icon = button.icon
        item.iconTintColor = button.iconTintColor
        return item
    }
}
