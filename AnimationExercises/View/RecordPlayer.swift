//
//  RecordPlayer.swift
//  AnimationExercises
//
//  Created by Emile Wong on 12/5/2021.
//

import SwiftUI

struct RecordPlayer: View {
    // MARK: - PROPERTIES
    @State private var rotateRecord: Bool = false
    @State private var rotateArm: Bool = false
    @State private var shouldAnimate = false
    @State private var degrees: Double = 0.0
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [Color.white, Color.black]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 20, endRadius: 600)
                .scaleEffect(1.2)
            
            // MARK: - RECORD PLAYER BOX
            RecordPlayerBox()
                .offset(y: -100)
            
            
            VStack {
                // MARK: - RECORD
                RecordView(degrees: $degrees, shouldAnimate: $shouldAnimate)
                
                // MARK: - ARM
                ArmView(rotateArm: $rotateArm)
                
                // MARK: - ADD THE PLAY BUTTON
                Button(action: {
                    shouldAnimate.toggle()
                    if shouldAnimate {
                        degrees = 36000
                        rotateArm.toggle()
                        playSound(sound: "music", type: "m4a")
                    } else {
                        rotateArm.toggle()
                        degrees = 0.0
                        audioPlayer?.stop()
                    }
                }, label: {
                    HStack(spacing: 8){
                        if !shouldAnimate {
                            Text("Play")
                            Image(systemName: "play.fill")
                                .imageScale(.large)
                        } else {
                            Text("Stop")
                            Image(systemName: "stop.fill")
                                .imageScale(.large)
                        }
                    } //: HSTACK
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .background(Capsule().strokeBorder(Color.black, lineWidth: 1.25))
                })
            }
            
            
        }
    }
}
// MARK: - PREVIEW
struct RecordPlayer_Previews: PreviewProvider {
    static var previews: some View {
        RecordPlayer()
    }
}
