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
            
            VStack(alignment: .center, spacing: 12.0){
                
                Text("Which mode would you like to use?")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Sage Green"))
                    .multilineTextAlignment(.center)
                Button(action: {
                    //go back to splash screen
                }) {
                    VStack{
                    
                        Text("Previous Page")
                            .font(.headline)
                        Text("Take me back to Splash Screen ")
                            .font(.body)
                            .foregroundColor(Color.gray)
                    }
                    .background(Color(.white))
                }
                Button(action: {
                    //go to equation selection
                }) {
                    VStack{
                        Text("Manual Mode")
                            .font(.headline)
                        Text("Select which equation to use, then provide information about the patient.")
                            .font(.body)
                            .foregroundColor(Color.gray)
                    }
                    .background(Color(.white))
                }
                
                Button(action: {
                    //go to manual mode
                }) {
                    VStack{
                        Text("Guided Mode")
                            .font(.headline)
                        Text("Provide information to determine which equation should be used, then the correct equation will be selected for you.")
                            .font(.body)
                            .foregroundColor(Color.gray)
                    }
                    .background(Color(.white))
                }
                
            }.frame(maxWidth: .infinity, // Full Screen Width
                    maxHeight: .infinity, // Full Screen Height
                    alignment: .topLeading) // Align To top
            .buttonStyle(.bordered)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
