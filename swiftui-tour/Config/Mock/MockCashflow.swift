//
//  MockCashflow.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import Foundation

enum MockUtils {
    static func createCashflow(numberOfMonths: Int = 12) -> [CashflowModel] {
        var result: [CashflowModel] = []
        let now = Date()
        let cal = Calendar.current
        var months = numberOfMonths
        while months > 0 {
            if let date = cal.date(byAdding: .month, value: -months, to: now) {
                // add in flow
                result.append(
                    .init(
                        type: .moneyIn,
                        amount: Double.random(in: 1...10) * 1000,
                        date: date
                    )
                )
                // add out flow
                result.append(
                    .init(
                        type: .moneyOut,
                        amount: Double.random(in: 1...10) * 1000,
                        date: date
                    )
                )
            }
            months -= 1
        }
        return result
    }
}
