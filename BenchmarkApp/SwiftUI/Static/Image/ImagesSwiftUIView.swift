//
//  ImagesSwiftUIView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-26.
//

import SwiftUI

struct ImagesSwiftUIView: View {
    var body: some View {
        ZStack{
            //           Background
            Rectangle()
                .foregroundColor(.orange)
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                ForEach(0..<50){ _ in
                    HStack(spacing: 0){
                        ForEach(0..<40){ c in
                            Image("image\(c%10)")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 8)
                        }
                    }
                }
            }
        }
    }
}

struct LotsOfImagesSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesSwiftUIView()
    }
}
