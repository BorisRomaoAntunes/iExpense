//
//  Compartilhando estados SwiftUi.swift
//  iExpense
//
//  Created by Boris R on 07/05/23.
//

import SwiftUI

class User2: ObservableObject { // declara que este classe tem algum atributo que precisa ser observado
    @Published var firtsName = "Francico" // declara que esse atributo devera ser observado
    var lastName = "Romao"
}
struct Compartilhando_estados_SwiftUi: View {
    @StateObject var user  = User2() // declara que esta variável que esta instanciando a classe User2 tem atributos que devem ser observados para que receba as altercações.
    
    var body: some View {
        VStack {
            Text("Salve! \(user.firtsName) \(user.lastName)")
            TextField ("Escreva", text: $user.firtsName)
            
        }
        .padding()
    }
}

struct Compartilhando_estados_SwiftUi_Previews: PreviewProvider {
    static var previews: some View {
        Compartilhando_estados_SwiftUi()
    }
}
