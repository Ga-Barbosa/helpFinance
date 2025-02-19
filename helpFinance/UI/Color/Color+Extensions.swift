//
//  Color+Extensions.swift
//  helpFinance
//
//  Created by João Vitor Duarte Mariucio on 17/02/25.
//

import Foundation
import UIKit

extension UIColor {
    static let softBlack = UIColor(hex: "#121212")
    static let foggyBlack = UIColor(hex: "#1A1A1A")
    static let lightGray = UIColor(hex: "#A0A0A0")

    convenience init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if hexSanitized.hasPrefix("#") {
            hexSanitized.remove(at: hexSanitized.startIndex)
        }

        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)

        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
