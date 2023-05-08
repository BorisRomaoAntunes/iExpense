//
//  Codable.swift
//  iExpense
//
//  Created by Boris R on 08/05/23.
//

import SwiftUI
struct User5: Codable {
    let firstName: String
    let lastName: String
}

struct CodableView: View {
    @State private var user = User5(firstName: "Boris", lastName: "Romao")
    
    var body: some View {
        Button ("Salve User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "UserData")
            }
        }
    }
}

struct Codable_Previews: PreviewProvider {
    static var previews: some View {
        CodableView()
    }
}
