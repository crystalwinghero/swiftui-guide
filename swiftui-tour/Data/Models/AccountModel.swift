//
//  AccountModel.swift
//  swiftui-tour
//
//  Created by crystalwinghero on 17/9/22.
//

import Foundation

enum AccountType: String, CaseIterable {
    case savings
    case current
    case fixed
    case debit
    case credit
}

struct AccountModel: Identifiable {
    var id: UUID = .init()
    var name: String
    var type: AccountType
    var number: String
    var balance: Double
}
