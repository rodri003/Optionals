//
//  ContentView.swift
//  Gallaugher
//
//  Created by Rafael Rodriguez on 4/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        GeometryReader {geometry in
            VStack {
                Spacer()
                
                Text(messageString)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .minimumScaleFactor(0.5)
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
                    .frame(height: 150)
                    .frame(maxWidth: .infinity)
                 //   .border(.orange, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Spacer()
                
               
                
                HStack {
                    
                    Button("Awesome") {
                        // This is the action performed when the button is pressed.
                        messageString = "You Are Awesome!"
                    }
                    .buttonStyle(.borderedProminent)
                   
                    Button("Great") {
                        // This is the action performed when the button is pressed.
                        messageString = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
               // Spacer()
            }
        }
        //.padding()
    }
}

#Preview {
    ContentView()
}
