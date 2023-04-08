//
//  CanDetailView.swift
//  Can We Win?
//
//  Created by Sanjit Anand on 8/4/23.
//

import SwiftUI

struct CanDetailView: View {
    
    @Binding var plants: Drink
    
    var body: some View {
        VStack {
            List{
                
                Section(header: Text("Details")) {
                    HStack{
                        Image(systemName: "tag.fill")
                        Text("Name Of Drink")
                        Spacer()
                        Text(plants.name)
                            .foregroundColor(Color(.gray))
                            .multilineTextAlignment(.trailing)
                    }
                    HStack{
                        Image(systemName: "dollarsign")
                            .foregroundColor(.purple)
                        Text("Price")
                        Spacer()
                        
                        Text("You paid \(plants.price)")
                            .foregroundColor(Color(.gray))
                    }
                }
                
                Section(header: Text("Details")) {
                    HStack{
                        Image(systemName: "tag.fill")
                        Text("You Bought It From")
                        Spacer()
                        Text(plants.name)
                            .foregroundColor(Color(.gray))
                            .multilineTextAlignment(.trailing)
                    }
                }
                
                
            }
        }
        .navigationTitle(plants.name)
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CanDetailView(plants: .constant(Drink(name: "Lorem Ipsum", price: 0, location: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")))
    }
}

