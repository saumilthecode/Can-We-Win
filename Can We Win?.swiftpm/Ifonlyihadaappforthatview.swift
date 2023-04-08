//
//  Ifonlyihadaappforthatview.swift
//  Can We Win?
//
//  Created by Sanjit Anand on 8/4/23.
//


import Foundation
import SwiftUI

@available(iOS 16.0, *)
struct Ifonlyihadaappforthatview: View {
    
    @State private var x1 = 0
    @State private var y1 = 0
    
    @State private var x2 = -600
    @State private var y2 = -600
    
    @State private var x3 = 0
    @State private var y3 = 0
    
    @State var buttonTitle: String = "Next"
    
    @State private var isShowingNext = false
    
    var body: some View {
        
        
        NavigationStack{
            
            
            VStack {
                
                Text("I should make a app for that!")
                    .font(.largeTitle)
                    .offset(x : CGFloat(x3) , y: CGFloat(y3))
                
                HStack {
                    
                    
                    
                    
                    Text("𖨆")
                        .font(.largeTitle)
                        .offset(x : CGFloat(x1) , y: CGFloat(y1))
                    Text("🥫")
                        .rotationEffect(Angle(degrees: -90))
                        .offset(x : CGFloat(x2) , y: CGFloat(y2))
                    
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
                        x2 = -600
                        y2 = -600
                    }
                    
                    withAnimation{
                        x3 = 0
                        y3 = 0
                    }
                    
                    
                }
                if isShowingNext {
                    
                    NavigationLink(destination: IhaveappView()) {
                        Text("Next View!")
                            .padding()
                            .buttonBorderShape(.roundedRectangle)
                    }
                    
                }
                
            }
        }
        
    }
}
