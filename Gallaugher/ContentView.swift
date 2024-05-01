//
//  ContentView.swift
//  Gallaugher
//
//  Created by Rafael Rodriguez on 4/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        GeometryReader {geometry in
            VStack {
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .padding()
                Spacer()
                
                
                
                
                
                Text (messageString)
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
                
                
                
                
                Button("Show Message") {
                    // This is the action performed when the button is pressed.
                    let message1 = "You Are Awesome!"
                    let message2 = "You Are Great!"
                    
                    messageString = (messageString == message1 ? message2 : message1)
                    
                    //TODO:  - update the imageName - variable
                    imageName = "image\(imageNumber)"
                    
                    imageNumber += 1
                    if imageNumber > 9 {
                      imageNumber = 0
                    }
                    print (imageNumber)
                    
                    
                }
                    
                .buttonStyle(.borderedProminent)
                
                
                
                
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
