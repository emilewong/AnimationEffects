//
//  RecordView.swift
//  AnimationExercises
//
//  Created by Emile Wong on 12/5/2021.
//

import SwiftUI

struct RecordView: View {
    // MARK: - PROPERTIES
    @Binding var degrees: Double
    @Binding var shouldAnimate: Bool
    
    // MARK: - BODY
    var body: some View {
        Image("record")
            .resizable()
            .frame(width: 275, height: 275)
            .shadow(color: .gray, radius: 1, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            .rotationEffect(Angle.degrees(degrees))
            .animation(Animation.linear(duration: shouldAnimate ? 60 : 0).delay(1.5))
        
    }
}
// MARK: - PREVIEW
struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView(degrees: .constant(2.0), shouldAnimate: .constant(true))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
