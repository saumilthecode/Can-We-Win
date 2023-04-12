//
//  FirstTimeView.swift
//  Can We Win?
//
//  Created by Saumil Anand on 8/4/23.
//

import SwiftUI

enum ActionState: Int {
    case setup = 0
    case readyForPush = 1
}


@available(iOS 16.0, *)

struct FirstTimeView: View {
    
    
    

    
    
    
    @State var name: String = ""
    @State var price: String = ""
    @State var location: String = ""
    
    @State private var actionState: ActionState? = .setup
    
    @Binding var plants: [Drink]
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        
        NavigationStack {
            
            ZStack{
                
                VStack{
                    Section(header: Text("Basic Details")) {
                        TextField("Drink Name", text: $name)
                        
                        TextField("Place You Bought It From (Be Specific)", text: $location)
                    }
                    Text("Price you paid for it")
                    TextField("", text: $price)
                        .frame(width: 50)
                        .padding(.leading)
                    
                    
                    
                    
                    Button("Save") {
                        let plant = Drink(
                            name: name,
                            price: price,
                            location: location)
                        plants.append(plant)
                        
                        
                        
                        
                        //                    NavigationLink(destination: IhaveappView()){
                        //
                        //                        Text("Save")
                        //
                        ////                        let plant = Drink(
                        ////                            name: name,
                        ////                            price: price,
                        ////                            location: location)
                        ////                        plants.append(plant)
                        ////
                        //                        self.asyncTask()
                        //
                        //                    }
                        
                    }
                }
            }
            .navigationTitle("Add Custom Can")
        }
        
        
        
        
        
        
    }
}
