//
//  ContentView.swift
//  Gallaugher
//
//  Created by Rafael Rodriguez on 4/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    
    var body: some View {
        GeometryReader {geometry in
            VStack {
                Spacer()
                
                Image(systemName: "cloud.sun.rain.fill")
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.multicolor)
                    .background(Color(hue: 0.521, saturation: 0.299, brightness: 0.958))
                    .cornerRadius(30)
                    .shadow(color: .gray, radius: 30, x: 20, y: 20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(.teal, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                    )
                   
                    .padding()
                
                
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
                   
                    Spacer()
                    
                    Button("Great") {
                        // This is the action performed when the button is pressed.
                        messageString = "You Are Great!"
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
               // Spacer()
            }
        }
        //.padding()
    }
}

#Preview {
    ContentView()
}
