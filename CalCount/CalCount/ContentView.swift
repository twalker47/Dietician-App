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
                Text("Which mode would you like to use?")
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 108/255, green:139/255 , blue:107/255 ))
                    .padding()
                    .offset(y: -100)
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
