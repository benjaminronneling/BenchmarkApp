//
//  ButtonsSwiftUIView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-26.
//

import SwiftUI

struct ButtonsSwiftUIView: View {
    var body: some View {
        ZStack{
//            Background
            Rectangle()
                .foregroundColor(.orange)
                .ignoresSafeArea()
            
            VStack(spacing: 2){
                ForEach(0..<15){ _ in
                    HStack(spacing: 2){
                        ForEach(0..<10){ c in
                            Button("\(c)") {
                            }
                            .buttonStyle(.borderedProminent)
                            
                        }
                    }
                }
            }
            
        }
    }
}

struct LotsOfButtonsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsSwiftUIView()
    }
}
