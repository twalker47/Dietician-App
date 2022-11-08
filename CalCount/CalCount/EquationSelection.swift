//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI

struct EquationSelection: View {
    var body: some View {
        NavigationView { //not sure if this should go here
            
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
                    
                    
                    // NavigationView {
                    // VStack{
                    //   Text("Please Choose: ")
                    NavigationLink(destination: MiffinStJeor()){
                        Text("Miffin St. Jeor")
                    }
                    NavigationLink(destination: HarrisBenedict()){
                        Text("Harris Benedict")
                    }
                    // }//end VStack/zstack
                }//end NavigationView
                
            }//end VStack
                .frame(maxWidth: .infinity, // Full Screen Width
                       maxHeight: .infinity, // Full Screen Height
                       alignment: .topLeading) // Align To top
                .buttonStyle(.bordered)
            }//end ZStack
        }//end body
        
        
        //I'm not sure this is needed - Britt
        /*    struct EquationSelectionB : View {
         var body: some View {
         NavigationView{
         VStack{
         Text("Hello World B")
         }.navigationBarTitle("")
         .navigationBarHidden(true)
         }
         }
         }
         */
        struct EquationSelection_Previews: PreviewProvider {
            static var previews: some View {
                EquationSelection()
            }
        }
    }

