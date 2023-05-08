//
//  Expenses.swift
//  iExpense
//
//  Created by Boris R on 08/05/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem] () {
        didSet{
//            let encoder = JSONEncoder()
//            if let encoded = try? encoder.encode(items) {
            // acima uma forma de verificar se é possivel tranformar os dados e JSONEncoder()
            
            //abaixo uma forma mais limpa de fazer a mesma coisa
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    init () {
        if let savedItemns = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItemns){
                items = decodedItems
                return
            }
        }
    }
}

