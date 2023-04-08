import SwiftUI

struct ContentView: View {
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                VStack {
                    Text("Can!")
                        .font(.body)
                    Image("can")
                        .resizable()
                        .frame(width: 200.0, height: 250.0)
                    
                }
                NavigationLink(destination: LoreView()) {
                    Text("Can we proceed?")
                        .padding()
                        .buttonBorderShape(.roundedRectangle)
                    
                }
                
            }
        } else {
            // Fallback on earlier versions
        }
    }
}


