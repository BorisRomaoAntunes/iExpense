//
//  Amazenamento UserDefaults.swift
//  iExpense
//
//  Created by Boris R on 08/05/23.
//

import SwiftUI

struct Amazenamento_UserDefaults: View {
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    @AppStorage ("tapCount") private var tapCount2 = 0
    
    var body: some View {
        HStack{
            Button("Tap Count: \(tapCount)"){
                tapCount += 1
                UserDefaults.standard.set(tapCount, forKey: "Tap")
                }
            Button("Tap Count 2: \(tapCount2)"){
                tapCount2 += 2
            }
        }
        
    }
}

struct Amazenamento_UserDefaults_Previews: PreviewProvider {
    static var previews: some View {
        Amazenamento_UserDefaults()
    }
}
