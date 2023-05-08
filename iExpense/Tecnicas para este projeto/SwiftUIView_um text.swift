//
//  SwiftUIView_um text.swift
//  iExpense
//
//  Created by Boris R on 08/05/23.
//

import SwiftUI

struct SwiftUIView_um_text: View {
    @State private var entrada = ""
    var body: some View {
        VStack{
            TextField("Digite aqui", text: $entrada)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("Maximo de 10 caracttes")
                .font(.footnote)
                .foregroundColor(.gray)
                .padding(.horizontal, 16)
            
        }
    }
}

struct SwiftUIView_um_text_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_um_text()
    }
}
