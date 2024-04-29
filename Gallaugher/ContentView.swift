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
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
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
        .padding()
    }
}

#Preview {
    ContentView()
}
