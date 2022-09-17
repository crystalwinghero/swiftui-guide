//
//  CashflowModel.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import Foundation

enum CashflowType: Int, CaseIterable {
    case moneyIn
    case moneyOut
    
    var title: String {
        switch self {
        case .moneyIn:
            return "Money In"
        case .moneyOut:
            return "Money Out"
        }
    }
}

struct CashflowModel: Identifiable {
    var id = UUID()
    var type: CashflowType
    var amount: Double
    var date: Date
}
