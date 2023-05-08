//
//  Showing and hidding view.swift
//  iExpense
//
//  Created by Boris R on 07/05/23.
//

import SwiftUI
struct ScondeView: View {
    let name: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        NavigationView{
            Button("Dimiss"){
                dismiss()
            }
        }
    }
}

struct Showing_and_hidding_view: View {
    
    @State private var showingSheet = false
    var body: some View {
        VStack{
            Button("Show Sheet"){
                showingSheet.toggle()
            }
        }
    
        .sheet(isPresented: $showingSheet){
            ScondeView(name: "Boris")
        
        }
    }
}

struct Showing_and_hidding_view_Previews: PreviewProvider {
    static var previews: some View {
        Showing_and_hidding_view()
    }
}
