//
//  Results.swift
//  CalCount
//
//  Created by Greg Young on 10/25/22.
//

import SwiftUI

struct Results: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            Text("The patient should intake")
            Text(statement)
            Text("calories")
            Button("Dismiss Me") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct Restults_Previews: PreviewProvider {
    static var previews: some View {
        Results()
    }
}
