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
            
            VStack{
                Button("Guided Mode") {
                    var view = UILabel()

                    view.frame = CGRect(x: 0, y: 0, width: 306, height: 145)

                    view.backgroundColor = .white


                    view.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor


                    var parent = self.view!

                    parent.addSubview(view)

                    view.translatesAutoresizingMaskIntoConstraints = false

                    view.widthAnchor.constraint(equalToConstant: 306).isActive = true

                    view.heightAnchor.constraint(equalToConstant: 145).isActive = true

                    view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 20).isActive = true

                    view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 177).isActive = true


            }
                Button("Manual Mode"){
                    
                }
            }
            .buttonStyle(.bordered)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
