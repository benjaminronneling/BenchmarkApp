//
//  ListSwiftUIView.swift
//  BenchmarkApp
//
//  Created by Macbook Pro on 2023-02-27.
//

import SwiftUI

struct ListSwiftUIView: View {
    
    
    var body: some View {
            
            List{
                ForEach(1..<100){ r in
                    HStack(spacing: 0){
                        DeckSwiftUIView()
                            .frame(width: 176, height: 240)
                        Spacer()
                        DeckSwiftUIView()
                            .frame(width: 176, height: 240)
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets())
                    .padding(5)
                }
            }
            .listStyle(.plain)
        
    }
}

struct ListSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ListSwiftUIView()
    }
}
