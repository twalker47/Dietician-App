//
//  ContentView.swift
//  Dietician App
//
//  Created by Greg Young on 9/20/22.
//

import SwiftUI

var mifflinResult = mifflin(sex: true, weight: 100, height: 180, age: 60)
var statement = "Calories for patient: \(mifflinResult) kcal"
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            //Text("Hello, world!")
            Text(statement)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
