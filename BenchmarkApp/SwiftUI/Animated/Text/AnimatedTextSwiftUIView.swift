//
//  AnimatedTextSwiftUIView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-03-04.
//

import SwiftUI

struct AnimatedTextSwiftUIView: View { 
    @State var degrees: [Double] = Array(repeating: 0, count: 30 * 20)
    @State var scales: [Double] = Array(repeating: 1.5, count:  30 * 20)
    @State var opacities: [Double] = Array(repeating: 1, count:  30 * 20)
    var body: some View {
        ZStack{
            //            Background
            Rectangle()
                .foregroundColor(.orange)
                .ignoresSafeArea()
            
            VStack(spacing: 5){
                ForEach(0..<30){ r in
                    HStack(spacing: 5){
                        ForEach(0..<20){ c in
                            Text("\(c)")
                                .font(.system(size: 8))
                                .rotationEffect(Angle(degrees: degrees[(r*c)+c]))
                                .scaleEffect(scales[(r*c)+c])
                                .opacity(opacities[(r*c)+c])
                                .onAppear {
                                    withAnimation(Animation.easeInOut(duration: (Double(r) / 10.0)+1).delay(Double(c) / 10.0).repeatForever(autoreverses: true)) {
                                        self.degrees[(r*c)+c] = -180
                                        self.scales[(r*c)+c] = 1
                                        self.opacities[(r*c)+c] = 0
                                    }
                                }
                        }
                    }
                }
            }
        }
    }
}

struct AnimatedTextSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedTextSwiftUIView()
    }
}
