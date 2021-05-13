//
//  ContentView.swift
//  AnimationExercises
//
//  Created by Emile Wong on 12/5/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isNavigationBarHidden : Bool = true
    @State private var selectTab = Tabs.Breathing
    
    // MARK: - BODY
    var body: some View {
        VStack{
            if selectTab == .Breathing {
                BreathingCircle()
            } else if selectTab == .RecordPlayer {
                RecordPlayer()
            } else if selectTab == .HueRotator {
                HueRotation()
            } else {
                BreathingCircle()
            } //: CONDITION
            
            HStack {
                Spacer()
                Image(systemName: selectTab == .Breathing ? "seal.fill" : "seal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor((selectTab == .Breathing
                                        ? Color.red : Color.secondary))
                    .onTapGesture {
                        self.selectTab = .Breathing
                    }
                Spacer()
                
                Image(systemName: selectTab == .RecordPlayer ? "music.note.list" : "music.note")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor((selectTab == .RecordPlayer
                                        ? Color.red : Color.secondary))
                    .onTapGesture {
                        self.selectTab = .RecordPlayer
                    }
                Spacer()
                
                Image(systemName: selectTab == .HueRotator ? "photo.fill" : "photo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor((selectTab == .HueRotator
                                        ? Color.red : Color.secondary))
                    .onTapGesture {
                        self.selectTab = .HueRotator
                    }
                Spacer()
                
                Image(systemName: selectTab == .Flower ? "heart.fill" : "heart")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor((selectTab == .Flower
                                        ? Color.red : Color.secondary))
                    .onTapGesture {
                        self.selectTab = .Flower
                    }
                Spacer()
                
            } //: HSTACK
            Spacer()
            
        } //: VSTACK
    }
}

enum Tabs {
    case Breathing
    case RecordPlayer
    case HueRotator
    case Flower
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
