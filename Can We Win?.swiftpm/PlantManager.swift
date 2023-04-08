
import Foundation
import SwiftUI

class PlantManager: ObservableObject {
    @Published var plants: [Drink] = [] {
        didSet {
            save()
        }
    }
    
    let samplePlants: [Drink] = []
    
    
    
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "plants.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedPlants = try? propertyListEncoder.encode(plants)
        try? encodedPlants?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalPlants: [Drink]!
        
        if let retrievedPlantData = try? Data(contentsOf: archiveURL),
           let decodedPlants = try? propertyListDecoder.decode([Drink].self, from: retrievedPlantData) {
            finalPlants = decodedPlants
        } else {
            finalPlants = samplePlants
        }
        
        plants = finalPlants
    }
}
