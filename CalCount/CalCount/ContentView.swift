//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
                .foregroundColor(.white)
                .font(.system(size: 30))
            
            VStack{
                Button("Guided Mode") {
            }
                Button("Manual Mode"){
                    
                }
            }
            .buttonStyle(.bordered)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
