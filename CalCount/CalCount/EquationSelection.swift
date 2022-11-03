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
            
            NavigationView {
                VStack{
                    //   Text("Please Choose: ")
                    NavigationLink(destination: MiffinStJeor()){
                        Text("MiffinStJeor ")
                    }
                    NavigationLink(destination: MiffinStJeor()){
                        Text("MiffinStJeor")
                    }
                }
                /*        }
                 //   VStack{
                 
                 //      Button("Equation") {
                 
                 //  }
                 //    Button("Equation"){
                 
                 }
                 }
                 .buttonStyle(.bordered)
                 }
                 }
                 }
                 
                 
                 struct EquationSelection_Previews: PreviewProvider {
                 static var previews: some View {
                 EquationSelection()
                 }*/
            }
        }
    }
}
