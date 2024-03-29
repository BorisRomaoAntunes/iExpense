//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Boris R on 08/05/23.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
