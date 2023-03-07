//
//  SwiftUIOptionsView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-25.
//

import SwiftUI

struct SwiftUIOptionsView: View {
    
    @State var presentView = false
    @State var tag = 1
    
    
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    VStack {
                        createButton(text: "Texts", buttonTag: 1)
                        createButton(text: "Buttons", buttonTag: 2)
                        createButton(text: "Images", buttonTag: 3)
                        createButton(text: "Blur", buttonTag: 4)
                        createButton(text: "List (CollectionView)", buttonTag: 5)
                        createButton(text: "Animation: text", buttonTag: 6)
                        createButton(text: "Animation: buttons", buttonTag: 7)
                        createButton(text: "Animation: images", buttonTag: 8)
                        createButton(text: "Animation: blur", buttonTag: 9)
                        createButton(text: "Animation: scroll", buttonTag: 10)
                        
                    }
                    .frame(width: 300)
                    .navigationDestination(isPresented: $presentView) {
                        switch(tag){
                        case 1:
                            TextSwiftUIView()
                        case 2:
                            ButtonsSwiftUIView()
                        case 3:
                            ImagesSwiftUIView()
                        case 4:
                            BlurSwiftUIView()
                        case 5:
                            ListSwiftUIView()
                        case 6:
                            AnimatedTextSwiftUIView()
                        case 7:
                            AnimatedButtonsSwiftUIView()
                        case 8:
                            AnimatingImagesSwiftUIView()
                        case 9:
                            AnimatedBlurredViewsSwiftUIView()
                        case 10:
                            ListSwiftUIView()
                        default:
                            AnimatingImagesSwiftUIView()
                        }
                        
                    }
                    Spacer()
                }
                Spacer()
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
            .background(.orange)
        }
        
    }
    
    func createButton(text: String, buttonTag: Int) -> some View {
        Button {
            presentView = true
            tag = buttonTag
        } label: {
            HStack{
                Spacer()
                Text(text)
                Spacer()
            }
        }
        .modifier(CustomButtonModifier())
    }
}

struct CustomButtonModifier: ViewModifier {
    let backgroundColor: Color = Color(.darkGray)
    let cornerRadius: CGFloat = 10
    
    func body(content: Content) -> some View {
        content
            .padding(15)
            .background(backgroundColor)
            .foregroundColor(.white)
            .cornerRadius(cornerRadius)
    }
}



struct SwiftUIOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIOptionsView()
    }
}
