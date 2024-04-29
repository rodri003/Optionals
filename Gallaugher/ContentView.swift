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
        VStack {
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.orange, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .padding()
            
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
            
        }
        //.padding()
    }
}

#Preview {
    ContentView()
}
