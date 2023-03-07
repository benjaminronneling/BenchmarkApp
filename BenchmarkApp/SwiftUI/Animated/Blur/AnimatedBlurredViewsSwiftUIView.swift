//
//  AnimatedBlurredViewsSwiftUIView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-03-04.
//

import SwiftUI

struct AnimatedBlurredViewsSwiftUIView: View {
    @State var degrees: [Double] = Array(repeating: 0, count: 15 * 10)
    @State var scales: [Double] = Array(repeating: 0.5, count:   15 * 10)
    @State var opacities: [Double] = Array(repeating: 1, count:   15 * 10)
    var body: some View {
        VStack{
            Spacer()
            VStack(spacing: 2){
                ForEach(0..<15){ r in
                    HStack(spacing: 2){
                        ForEach(0..<10){ c in
                            Rectangle()
                            .background(.ultraThinMaterial)
                            .rotationEffect(Angle(degrees: degrees[(r*c)+c]))
                            .scaleEffect(scales[(r*c)+c])
                            .opacity(opacities[(r*c)+c])
                            .onAppear {
                                withAnimation(Animation.easeInOut(duration: (Double(r) / 10.0)+1).repeatForever(autoreverses: true).delay(Double(c) / 10.0)) {
                                    self.degrees[(r*c)+c] = -180
                                    self.scales[(r*c)+c] = 1
                                    self.opacities[(r*c)+c] = 0
                                }
                            }

                        }
                    }
                }
            }
            .padding(20)
            .frame(width: 400, height: 600)
            Spacer()
        }
        .background{
            Image("image1")
                .resizable()
                .scaledToFill()
        }
        .ignoresSafeArea()
        
    }
}

struct AnimatedBlurredViewsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedBlurredViewsSwiftUIView()
    }
}
