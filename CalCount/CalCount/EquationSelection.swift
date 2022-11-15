//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI

struct EquationSelection: View {
    var body: some View {
       // NavigationView { //not sure if this should go here
            
            ZStack {
                Color.white
                    .ignoresSafeArea()
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                
                VStack(alignment: .center, spacing: 12.0){ //used to be vstack
                    
                    Text("Which equation would you like to use?")
                    
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("Sage Green"))
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: MiffinStJeor(), label:{
                        Text("Miffin St. Jeor")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color("Sage Green"))
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                    })
                    NavigationLink(destination: PennStateH(), label:{
                        Text("Penn State H")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color("Sage Green"))
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                        
                    })
                    NavigationLink(destination: PennStateTen(), label:{
                        Text("Penn State Ten")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(Color("Sage Green"))
                            .foregroundColor(Color.white)
                            .cornerRadius(20)
                        
                    })
                    // }//end VStack/zstack
                }//end NavigationView
                
            }//end VStack
            /*   .frame(maxWidth: .infinity, // Full Screen Width
             maxHeight: .infinity, // Full Screen Height
             alignment: .topLeading) // Align To top
             .buttonStyle(.bordered)
             */ //  }//end nav view
    }//end body
    
    struct EquationSelection_Previews: PreviewProvider {
        static var previews: some View {
            EquationSelection()
        }
    }
}

