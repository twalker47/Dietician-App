//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI

struct HarrisBenedict: View {
    var body: some View {
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
                .foregroundColor(.white)
                .font(.system(size: 30))
            
            VStack{
                Button("Previous Page"){
                
                }
                Button("Stuff for Benedict Equation ") {
                
                }
               
            }
            .buttonStyle(.bordered)
        }
    }
}


struct HarrisBenedict_Previews: PreviewProvider {
    static var previews: some View {
        HarrisBenedict()
    }
}

