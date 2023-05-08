//
//  Deleting items using onDelet.swift
//  iExpense
//
//  Created by Boris R on 08/05/23.
//

import SwiftUI

struct Deleting_items_using_onDelet: View {
    @State private var numbers = [Int] ()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach (numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: remoceRows)
                }
                
                
                Button("Add Number"){
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("OnDelet()")
            .toolbar { // adiciona um botao que da mostra uma opcao para edtar os itens de uma lista
                EditButton()
            }
        }
    }
    func remoceRows(at offsets: IndexSet){
        numbers.remove(atOffsets: offsets)
    }
}

struct Deleting_items_using_onDelet_Previews: PreviewProvider {
    static var previews: some View {
        Deleting_items_using_onDelet()
    }
}
