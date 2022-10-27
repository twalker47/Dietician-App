//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI


    
    
struct PennStateTen: View {
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()

        @State var sex = true
        @State var weight = 0
        @State var height = 0
        @State var age = 0
        @State var v = 0
        @State var tMax = 0
        @State var showingDetail = false
    var body: some View {
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
                .foregroundColor(.white)
                .font(.system(size: 30))
            
            VStack{
                Text("Penn State 2010").padding()
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
                HStack(alignment: .center){
                    Text("expired minute ventilation: ")
                    TextField("Enter patient's expired minute ventilation", value: $v, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.decimalPad)
                }.padding()
                HStack(alignment: .center){
                    Text("max temp: ")
                    TextField("Enter patient's maximum temperature", value: $tMax, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.decimalPad)
                }.padding()
                Button(action: {
                    self.showingDetail.toggle()
                    print(sex)
                    print(weight)
                    print(height)
                    print(age)
                    print(v)
                    print(tMax)
                    let pennState2010Result = pennState2010(sex: sex, weight: Float(weight), height: Float(height), age: Float(age), v: Float(v), tMax: Float(tMax))
                    statement = "\(pennState2010Result)"
                }) {
                    Text("Calculate")
                }.sheet(isPresented: $showingDetail) {
                    Results()
                }.padding()
            }
        }
    }
}



struct PennStateTen_Previews: PreviewProvider {
    static var previews: some View {
        PennStateTen()
    }
}


