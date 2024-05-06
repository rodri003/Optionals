//
//  ContentView.swift
//  Gallaugher
//
//  Created by Rafael Rodriguez on 4/29/24.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
//    @State private var imageNumber = 0
//    @State private var messageNumber = 0
    @State private var lastImageNumber = -1
    @State private var lastMessageNumber = -1
    @State private var audioPlayer: AVAudioPlayer!
    @State private var lastSoundNumber = -1
    @State private var soundIsOn = true
    
    var body: some View {
        GeometryReader {geometry in
            VStack {
                
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
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(5)
                    .padding()
                
                Spacer()
                
                
                HStack {
                 
                    Text ("Toggle is On:")
                        
                       
                    Toggle("", isOn: $soundIsOn)
                        .labelsHidden()
//                        .onChange(of: soundIsOn) { _, _ in
//                            if audioPlayer != nil {
//                                if audioPlayer.isPlaying {
//                                    audioPlayer.stop()
//                                }
//                            }
//                        }
                    // Modified with a compound conditional
                        .onChange(of: soundIsOn) { _, _ in
                            if audioPlayer != nil && audioPlayer.isPlaying {
                                audioPlayer.stop()
                            }
                        }
                                
                      Spacer()
                       
                    

                    Button("Show Message") {
                        
                        let messages = ["You are Awesome!",
                                        "You Are Great!" ,
                                        "Fabulous? That's You!",
                                        "You are Fantastic",
                                        "You Swifty!",
                                        "You Are a Code Monster",
                                        "You Did It!"]
                            
                        var messageNumber: Int
                                            
                        repeat {
                            messageNumber = Int.random(in: 0...messages.count - 1)
                        } while messageNumber == lastMessageNumber
                        messageString = messages[messageNumber]
                        lastMessageNumber = messageNumber
                           
                        
                        
                        //                    messageString = messages[messageNumber]
                        //                    messageNumber += 1
                        //                    if messageNumber == messages.count {
                        //                        messageNumber = 0
                        //                    }
                        
                        
                        var imageNumber: Int
                        
                        repeat {
                            imageNumber = Int.random(in: 0...9)
                        } while imageNumber == lastImageNumber
                        imageName = "image\(imageNumber)"
                        lastImageNumber = imageNumber
                                           
                        
                        //TODO:  - update the imageName - variable
                        //                    imageName = "image\(imageNumber)"
                        //
                        //                    imageNumber += 1
                        //                    if imageNumber > 9 {
                        //                        imageNumber = 0
                        //                    }
                        //                    print (imageNumber)
                        
                        // Challenge random sounds non-repeating
                        
                        // Check to see if Sound toggle is On
                        
                        if soundIsOn {
                            var soundNumber: Int
                            
                            repeat {
                                soundNumber = Int.random(in: 0...5)
                            } while soundNumber == lastSoundNumber
                            let soundName = "sound\(soundNumber)"
                           
                            guard let soundFile = NSDataAsset(name: soundName) else {
                                print ("😡 Could not read file named \(soundName)")
                                return
                            }
                            
                            do {
                                
                               audioPlayer =  try AVAudioPlayer(data: soundFile.data)
                                audioPlayer.play()
                            } catch {
                                print ("😡 ERROR: \(error.localizedDescription) creating audioPlayer")
                                
                            }
                        }
                        
                        
                            
               
                        
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
