//
//  LoreView.swift
//  Can We Win?
//
//  Created by Sanjit Anand on 8/4/23.
//

import Foundation
import SwiftUI



@available(iOS 16.0, *)
struct LoreView: View {
    
    @State private var x1 = -100.0
    @State private var y1 = -100.0
    
    @State private var x2 = 0
    @State private var y2 = 0
    
    @State private var x4 = 0
    @State private var y4 = 0
    
    @State var buttonTitle: String = "Next "
    
    @State private var isShowingNext = false
    
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                    
                    Text("𖨆")
                        .font(.largeTitle)
                        .offset(x : CGFloat(x1) , y: CGFloat(y1))
                    Text("🥫")
                        .offset(x : CGFloat(x2) , y: CGFloat(y2))
//                    Image("SCR-20230408-rlrc")
//                        .offset(x : CGFloat(x4) , y: CGFloat(y4))

                }
                
                
                
                Button(buttonTitle) {
                    
                    withAnimation {
                        x1 = 0
                        y1 = 0
                        
                    }
                    
                    withAnimation {
                        isShowingNext.toggle()
                    }
                    
                    withAnimation{
                        x2 = -50
                        y2 = 0
                    }
                }
                
                if isShowingNext {
                    
                    NavigationLink(destination: CandrinkingView()) {
                        Text("Next View!")
                            .padding()
                            .buttonBorderShape(.roundedRectangle)
                    }
                }
            }
        }
    }
}
