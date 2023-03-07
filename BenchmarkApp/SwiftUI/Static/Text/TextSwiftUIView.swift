//
//  TextSwiftUIView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-26.
//

import SwiftUI

struct TextSwiftUIView: View {
    var body: some View {
        ZStack{
//            Background
            Rectangle()
                .foregroundColor(.orange)
                .ignoresSafeArea()
            
            VStack(spacing: 0){
                ForEach(0..<80){ _ in
                    HStack(spacing: 0){
                        ForEach(0..<50){ c in
                            Text("\(c)")
                                .font(.system(size: 6))
                        }
                    }
                }
            }
        }
    }
}

struct LotsOfTextSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TextSwiftUIView()
    }
}
