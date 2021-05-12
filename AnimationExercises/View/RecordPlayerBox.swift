//
//  RecordPlayerBox.swift
//  AnimationExercises
//
//  Created by Emile Wong on 12/5/2021.
//

import SwiftUI

struct RecordPlayerBox: View {
    var body: some View {
        ZStack
        {
            Rectangle()
                .foregroundColor(.black )
                .frame(width: 345, height: 345)
                .cornerRadius(10)
            
            Image("woodGrain")
                .resizable()
                .frame(width: 325, height: 325)
                .shadow(color: .white, radius: 3, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct RecordPlayerBox_Previews: PreviewProvider {
    static var previews: some View {
        RecordPlayerBox()
    }
}
