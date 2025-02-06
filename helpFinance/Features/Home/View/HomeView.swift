//  Created by João Vitor Duarte Mariucio on 26/09/24.
//

import Floaty
import Foundation
import UIKit

class HomeView: BaseView {
    var floatyButton: Floaty = {
        var view = Floaty()
        return view
    }()

    var expenseButton: FloatyItem = .create(from: .expense)

    var expenseCreditCardButton: FloatyItem = .create(from: .expenseCreditCard)

    var incomingButton: FloatyItem = .create(from: .incoming)

    var transferenceButton: FloatyItem = .create(from: .tranference)

    // MARK: Internal

    override func buildHierarchy() {
        addSubview(floatyButton)
    }

    override func setupConstraints() {}

    override func configureView() {
        backgroundColor = .black
        floatyButton.addItem(item: expenseButton)
        floatyButton.addItem(item: expenseCreditCardButton)
        floatyButton.addItem(item: incomingButton)
        floatyButton.addItem(item: transferenceButton)
    }
}
