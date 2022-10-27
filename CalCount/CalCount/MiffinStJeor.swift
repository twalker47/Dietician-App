//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI

public var statement = ""

let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }()


struct MiffinStJeor: View {
    @State var sex = true
    @State var weight = 0
    @State var height = 0
    @State var age = 0
    @State var showingDetail = false
    
    
    
    var body: some View {
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
                .foregroundColor(.white)
                .font(.system(size: 30))
            
            VStack{
                Text("Mifflin-St. Jeor").padding()
                HStack{
                    Text("Sex").padding()
                    Button("Male") {
                        sex = true
                            
                    }
                    .padding()
                    .background(Color.white)
                    .clipShape(Capsule())
                    Button("Female") {
                        sex = false
                        
                    }
                    .padding()
                    .background(Color.white)
                    .clipShape(Capsule())
                }
                
                HStack(alignment: .center){
                    Text("Weight: ")
                    TextField("Enter patient's weight", value: $weight, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.decimalPad)
                }.padding()
                HStack(alignment: .center){
                    Text("Height: ")
                    TextField("Enter patient's height", value: $height, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.decimalPad)
                }.padding()
                HStack(alignment: .center){
                    Text("age: ")
                    TextField("Enter patient's age", value: $age, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.decimalPad)
                }.padding()
                Button(action: {
                    self.showingDetail.toggle()
                    print(sex)
                    print(weight)
                    print(height)
                    print(age)
                    let mifflinResult = mifflin(sex: sex, weight: Float(weight), height: Float(height), age: Float(age))
                    statement = "\(mifflinResult)"         
                }) {
                    Text("Calculate")
                }.sheet(isPresented: $showingDetail) {
                    Results()
                }.padding()
            }
        }
    }
}


struct MiffinStJeor_Previews: PreviewProvider {
    static var previews: some View {
        MiffinStJeor()
    }
}



