
import SwiftUI

struct IhaveappView: View {
    
    
    @StateObject var plantManager = PlantManager()
    
    @State var isNewPlantPresented = false
    @State var isOnboardingPresented = false
    
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach($plantManager.plants) { $plant in
                    NavigationLink(destination: CanDetailView(plants: $plant)) {
                        VStack(alignment: .leading){
                            Text(plant.name)
                            HStack{
                                Spacer()
                            }
                        }
                    }
                }.onDelete { offset in
                    plantManager.plants.remove(atOffsets: offset)
                }.onMove { source, destination in
                    plantManager.plants.move(fromOffsets: source, toOffset: destination)
                }
                
            }
            .navigationTitle("My Drinks")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isNewPlantPresented = true
                    } label:   {
                        Image(systemName: "plus")
                    }
                }
            }
        }.sheet(isPresented: $isNewPlantPresented) {
            AddCustomPlantView(plants: $plantManager.plants)
        }.sheet(isPresented: $isOnboardingPresented) {
            OnboardingView()
        }
        .onChange(of: plantManager.plants) { newValue in
            isOnboardingPresented = newValue.isEmpty
        }
    }
}

