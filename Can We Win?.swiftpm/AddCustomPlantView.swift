
import UserNotifications
import SwiftUI

struct AddCustomPlantView: View {
    
    @State var name: String = ""
    @State var price: String = ""
    @State var location: String = ""
    
    @Binding var plants: [Drink]
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Color.gray
                .ignoresSafeArea()
            
            VStack{
                Form {
                    Section(header: Text("Basic Details")) {
                        TextField("Drink Name", text: $name)
                        
                        TextField("Place You Bought It From (Be Specific)", text: $location)
                    }
                    Text("Minimum Temperature")
                    TextField("", text: $price)
                        .frame(width: 50)
                        .padding(.leading)
                    
                    
                    Button("Save") {
                        
                        let plant = Drink(
                            name: name,
                            price: price,
                            location: location
                            
                        )
                        plants.append(plant)
                        dismiss()
                    }
                }
            }
            .navigationTitle("Add Custom Can")
        }
    }
    
}

struct AddCustomPlantView_Previews: PreviewProvider {
    static var previews: some View {
        AddCustomPlantView(plants: .constant([]))
    }
}
