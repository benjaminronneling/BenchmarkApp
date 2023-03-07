//
//  AlteringImagesSwiftUIViewController.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-24.
//
 
import SwiftUI 
struct AnimatingImagesSwiftUIView: View {
    
    @State var degrees: [Double] = Array(repeating: 0.0, count: 7) 
    @State var scales: [Double] = [4.5,4,3.5,3,2.5,2,1.5]
    @State var opacities: [Double] = Array(repeating: 1.0, count: 7)

    var body: some View {
        
        ZStack{
            // Background
            Rectangle()
                .foregroundColor(.orange)
                .ignoresSafeArea()
            
            ZStack{
                ForEach(0..<7) { i in
                    createImage(imageName: "image\(i + 1)")
                        .rotationEffect(Angle(degrees: degrees[i]))
                        .scaleEffect(scales[i])
                        .opacity(opacities[i])
                        .onAppear {
                            withAnimation(Animation.easeInOut(duration: Double(i+1)).repeatForever(autoreverses: true)) {
                                self.degrees[i] = -180
                                self.scales[i] = 0
                                self.opacities[i] = 0
                            }
                        }
                }
                
            }
        }
    }
    
    func createImage(imageName: String) -> some View{
        
        return Image(imageName)
            .resizable()
            .frame(width: 64, height: 64)
        
    }
}

struct AlteringImagesSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatingImagesSwiftUIView()
    }
}


