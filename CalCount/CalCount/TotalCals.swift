//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI

struct TotalCals: View {
    var body: some View {
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
                .foregroundColor(.white)
                .font(.system(size: 30))
            
            VStack{
                Button("Stuff for Total Number of Calories ") {
                
                }
               
            }
            .buttonStyle(.bordered)
        }
    }
}


struct TotalCals_Previews: PreviewProvider {
    static var previews: some View {
        TotalCals()
    }
}


