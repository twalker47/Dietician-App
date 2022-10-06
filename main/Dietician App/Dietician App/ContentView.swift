//
//  ContentView.swift
//  Dietician App
//
//  Created by Greg Young on 9/20/22.
//

import SwiftUI


struct ContentView: View {
    @State var weight = 0
    @State var height = 0
    @State var age = 0
    
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()
    
    var body: some View {
        VStack {
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
            Button("Click Me") {
                print(weight)
                print(height)
                print(age)
                let mifflinResult = mifflin(sex: true, weight: Float(weight), height: Float(height), age: Float(age))
                let statement = "Calories for patient: \(mifflinResult) kcal"
                print(statement)
                
            }
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
