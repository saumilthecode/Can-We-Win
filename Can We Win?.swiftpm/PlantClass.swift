
import Foundation

struct Drink: Identifiable, Codable, Equatable{
    var id = UUID()
    var name: String
    var price: String
    var location: String
}
