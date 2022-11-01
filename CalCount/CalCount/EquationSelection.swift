//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI

struct EquationSelection: View {
    var body: some View {
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
                .foregroundColor(.white)
                .font(.system(size: 30))
            
            VStack{
                Button("Previous Page"){
                
                }
                Button("Equation") {
                
            }
                Button("Equation"){
                    
                }
            }
            .buttonStyle(.bordered)
        }
    }
}


struct EquationSelection_Previews: PreviewProvider {
    static var previews: some View {
        EquationSelection()
    }
}
