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
                                Text("Penn State 2010").padding()
                                    .bold()
                                    .frame(width: 250, height: 50)
                                    .background(Color("Sage Green"))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(20)
                                HStack{
                                    Text("Sex").padding()
                                    Button("Male") {
                                        sex = true
                                            
                                    }
                                    .frame(width: 75, height: 40)
                                    .background(Color("Sage Green"))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(20)
                                    Button("Female") {
                                        sex = false
                                        
                                    }
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
                            }//end V
                        }//end Z
                    }
                }
            }
        }
        
        
        
       
    }//end body
}



struct PennStateTen_Previews: PreviewProvider {
    static var previews: some View {
        PennStateTen()
    }
}


