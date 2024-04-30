//
//  ContentView.swift
//  Gallaugher
//
//  Created by Rafael Rodriguez on 4/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageName = ""
    @State private var imageName = ""
    
    var body: some View {
        GeometryReader {geometry in
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .padding()
                Spacer()
                
                
                
                
                
//                Text (messageString)
//                    .font(.largeTitle)
//                    .fontWeight(.heavy)
//                    .minimumScaleFactor(0.5)
//                    .foregroundColor(.red)
//                    .multilineTextAlignment(.center)
//                    .frame(height: 150)
//                    .frame(maxWidth: .infinity)
                //   .border(.orange, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Spacer()
                
                
                
                
                Button("Show Message") {
                    // This is the action performed when the button is pressed.
                    let image1 = "horizontal"
                    let image2 = "vertical"
                    //                    if messageString == message1 {
                    //                        messageString = message2
                    //                    } else {
                    //                        messageString = message1
                    //                    }
                    imageName = (imageName == image1 ? image2 : image1)
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
