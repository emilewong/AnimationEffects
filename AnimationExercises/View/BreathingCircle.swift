//
//  BreathingCircle.swift
//  AnimationExercises
//
//  Created by Emile Wong on 12/5/2021.
//

import SwiftUI




struct BreathingCircle: View {
    // MARK: - PROPERTIES
    @State private var rotateInOut = false
    @State private var scaleInOut = false
    @State private var moveInOut = false
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            Rectangle().fill(Color.black)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)

            ZStack{
                // MARK: - Circles Set 1
                ZStack{
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                    
                } //ZSTACK
                .opacity(0.5)
                
                // MARK: - Circles Set 2
                ZStack{
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                    
                } //ZSTACK
                .opacity(0.5)
                .rotationEffect(.degrees(60))
                
                // MARK: - Circles Set 3
                ZStack{
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .top, endPoint: .bottom))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? -60 : 0)
                    
                    Circle().fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.white]), startPoint: .bottom, endPoint: .top))
                        .frame(width: 120, height: 120)
                        .offset(y: moveInOut ? 60 : 0)
                    
                } //ZSTACK
                .opacity(0.5)
                .rotationEffect(.degrees(120))
                
            } //: ZSTACK
            .rotationEffect(.degrees(rotateInOut ? 90 : 0))
            .scaleEffect(scaleInOut ? 1 : 1/4)
            .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/8))
            .onAppear{
                moveInOut.toggle()
                scaleInOut.toggle()
                rotateInOut.toggle()
            }
            
        } //: ZSTACK
    }
}
// MARK: - PREVIEW
struct BreathingCircle_Previews: PreviewProvider {
    static var previews: some View {
        BreathingCircle()
    }
}
