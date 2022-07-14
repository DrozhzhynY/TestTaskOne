import Foundation

struct LossEquipment: Codable, Identifiable {
    let id = UUID()
    let date: String
    let day: Int
    let aircraft: Int
    let helicopter: Int
    let tank: Int
    let APC: Int
    let fieldArtillery: Int
    let MRL: Int
    let militaryAuto: Int
    let fuelTank: Int
    let drone: Int
    let navalShip: Int
    let antiAircraftWarfare: Int
    let specialEquipment: Int?
    let mobileSRBMsystem: Int?
    let vehiclesAndFuelTanks: Int?
    let cruiseMissiles: Int?

    enum CodingKeys: String, CodingKey {
        case date, day, aircraft, helicopter, tank
        case APC = "APC"
        case fieldArtillery = "field artillery"
        case MRL = "MRL"
        case militaryAuto = "military auto"
        case fuelTank = "fuel tank"
        case drone = "drone"
        case navalShip = "naval ship"
        case antiAircraftWarfare = "anti-aircraft warfare"
        case specialEquipment = "special equipment"
        case mobileSRBMsystem = "mobile SRBM system"
        case vehiclesAndFuelTanks = "vehicles and fuel tanks"
        case cruiseMissiles = "cruise missiles"
    }
    
    static var Losses: [LossEquipment] = Bundle.main.decode(file: "russia_losses_equipment.json")
    static let sampleLoss: LossEquipment = Losses[0]
}
