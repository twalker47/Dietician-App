//
//  PennStateH.swift
//  CalCount
//
//  Created by Greg Young on 10/26/22.
//

import SwiftUI


    
    
struct PennStateH: View {
    let formatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            return formatter
        }()

        @State var sex = true
        @State var weight = 0
        @State var height = 0
        @State var age = 0
        @State var tMax = 0
        @State var showingDetail = false
    var body: some View {
        //adding scroll view
        ScrollView{
            ScrollViewReader{ proxy in
                VStack{
                    ForEach(0..<1){_ in
                        ZStack {
                            Color.white
                                .ignoresSafeArea()
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                            
                            VStack{
                                Text("Penn State").padding()
                                    .bold()
                                    .frame(width: 250, height: 50)
                                    .background(Color("Sage Green"))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(20)
                                Text("(Hospitalized, non-ventilated patients)").padding()
                                    .foregroundColor(Color.gray)
                                    
                                HStack{
                                    Text("Sex:")
                                    Button("Male") {
                                        sex = true
                                    }
                                   // .padding()
                                    .frame(width: 75, height: 40)
                                    .background(Color("Sage Green"))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(20)
                                    Button("Female") {
                                        sex = false
                                        
                                    }
                                   // .padding()
                                        .frame(width: 100, height: 40)
                                        .background(Color("Sage Green"))
                                        .foregroundColor(Color.white)
                                        .cornerRadius(20)
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
                                    Text("Age: ")
                                    TextField("Enter patient's age", value: $age, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.decimalPad)
                                }.padding()
                                HStack(alignment: .center){
                                    Text("Max Temp: ")
                                    TextField("Enter patient's maximum temperature", value: $tMax, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle()).keyboardType(.decimalPad)
                                }.padding()
                                Button(action: {
                                    self.showingDetail.toggle()
                                    print(sex)
                                    print(weight)
                                    print(height)
                                    print(age)
                                    print(tMax)
                                    let pennStateHResult = pennStateH(sex: sex, weight: Float(weight), height: Float(height), age: Float(age), tMax: Float(tMax))
                                    statement = "\(pennStateHResult)"
                                }) {
                                    Text("Calculate")
                                }.sheet(isPresented: $showingDetail) {
                                    Results()
                                }.padding()
                            }//end V
                        }//end Z
                    }
                }
                
            }
        }
        
        
    }
}



struct PennStateH_Previews: PreviewProvider {
    static var previews: some View {
        PennStateH()
    }
}


