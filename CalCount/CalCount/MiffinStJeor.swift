//
//  ContentView.swift
//  CalCount
//
//  Created by Brittany Bishop on 10/10/22.
//

import SwiftUI
public var mifflin_statement1 = ""
public var mifflin_statement2 = ""
struct MiffinStJeor: View {
    @State var weight = 0
    @State var height = 0
    @State var age = 0
    @State var showingDetail = false
    
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    var body: some View {
        
        
        
        ZStack {
            Color.white
                .ignoresSafeArea()
                .foregroundColor(.white)
                .font(.system(size: 30))
            
            VStack{
                Text("Mifflin-St. Jeor")
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
                    print(weight)
                    print(height)
                    print(age)
                    let mifflinResultM = mifflin(sex: true, weight: Float(weight), height: Float(height), age: Float(age))
                    mifflin_statement1 = "Calories for male patient: \(mifflinResultM) kcal"
                    print(mifflin_statement1)
                    let mifflinResultF = mifflin(sex: false, weight: Float(weight), height: Float(height), age: Float(age))
                    mifflin_statement2 = "Calories for female patient: \(mifflinResultF) kcal"
                    print(mifflin_statement2)
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



