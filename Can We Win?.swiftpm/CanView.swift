import SwiftUI

struct OnboardingView: View {
    @ObservedObject var plantManager = PlantManager()
    var body: some View {
        
        AddCustomPlantView(plants: $plantManager.plants)
        
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
