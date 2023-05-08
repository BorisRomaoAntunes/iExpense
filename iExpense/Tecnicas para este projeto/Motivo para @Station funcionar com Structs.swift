//
//  Motivo para @Station funcionar com Structs.swift
//  iExpense
//
//  Created by Boris R on 06/05/23.
//

import SwiftUI
class User {
    var firtsName = "Boris"
    var lastName = "Romao"
}
struct Motivo_para__Station_funcionar_com_Structs: View {
    @State private var user  = User()
    
    var body: some View {
        VStack {
            Text ("Your name is \(user.firtsName) \(user.lastName)")
            
            TextField("First name", text: $user.firtsName)
            TextField("Last name", text: $user.lastName)
            
            
        }
    }
}

struct Motivo_para__Station_funcionar_com_Structs_Previews: PreviewProvider {
    static var previews: some View {
        Motivo_para__Station_funcionar_com_Structs()
    }
}
