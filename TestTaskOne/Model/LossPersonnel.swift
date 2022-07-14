import Foundation

struct LossPersonnel: Codable, Identifiable {
    let id = UUID()
    let date: String
    let day: Int
    let personnel: Int
    let personnelWithStar: String
    let pow: Int

    enum CodingKeys: String, CodingKey {
        case date, day, personnel
        case personnelWithStar = "personnel*"
        case pow = "POW"
    }

    static var Losses: [LossPersonnel] = Bundle.main.decode(file: "russia_losses_personnel.json")
    static let sampleLoss: LossPersonnel = Losses[0]
}


