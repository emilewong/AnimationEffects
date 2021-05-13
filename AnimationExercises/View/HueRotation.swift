//
//  HueRotation.swift
//  AnimationExercises
//
//  Created by Emile Wong on 12/5/2021.
//

import SwiftUI

struct HueRotation: View {
    // MARK: - PROPERTIES
    @State private var shiftColor: Bool = false
    @State private var image: String = "dog"
    let backgroundColor = Color(.black)
    
    // MARK: - BODY
    var body: some View {
        VStack{
            ZStack{
                backgroundColor
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Image(image)
                    .resizable()
                    .padding(20)
                    .frame(width: 435, height: 435)
                    .hueRotation(.degrees(self.shiftColor ? 360 * 2 : 0))
                    .animation(Animation.easeInOut(duration: 2).delay(0.4).repeatForever(autoreverses: true))
                    .onAppear(){
                        self.shiftColor.toggle()
                    }
                
            } //:ZSTACK
            ImagePicker(selectedImage: $image)
                .frame(width: 350, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        } //: VSTACK
        .background(Color.black)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ImagePicker: View {
    // MARK: - PROPERTIES
    @Binding var selectedImage: String
    let images: [String] = ["ornament", "landscape", "dog", "dice", "cat"]
    
    // MARK: - BODY
    var body: some View {
        Picker("", selection: $selectedImage){
            ForEach(images, id: \.self) { value in
                    Text(value)
                        .foregroundColor(.white)
            } //: LOOP
        } //: PICKER
        .pickerStyle(WheelPickerStyle())
        .frame(width: 300, height: 150)
        .background(Color.red.colorMultiply(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/))
        .cornerRadius(20)
        .shadow(color: .white, radius: 5, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}


// MARK: - PREVIEW
struct HueRotation_Previews: PreviewProvider {
    static var previews: some View {
        HueRotation()
    }
}
