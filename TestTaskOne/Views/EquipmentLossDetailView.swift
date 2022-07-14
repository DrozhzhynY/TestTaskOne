import SwiftUI

struct EquipmentLossDetailView: View {
    let loss: LossEquipment
    
    var body: some View {
        VStack(spacing: 10) {
            Group {
                Text("Date: \(loss.date)").bold()
                Text("Day: \(loss.day)")
                Text("Aircraft: \(loss.aircraft)")
                Text("Helicopter: \(loss.helicopter)")
                Text("Tank: \(loss.tank)")
                Text("APC: \(loss.APC)")
                Text("Field Artillery: \(loss.fieldArtillery)")
                Text("MRL: \(loss.MRL)")
                Text("Military Auto: \(loss.militaryAuto)")
                Text("Fuel Tank: \(loss.fuelTank)")
            }
            Group {
                Text("Drone: \(loss.drone)")
                Text("Naval Ship: \(loss.navalShip)")
                Text("Anti Aircraft Warfare: \(loss.antiAircraftWarfare)")
            }
        }
    }
}

struct EquipmentLossDetailView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentLossDetailView(loss: LossEquipment.sampleLoss)
    }
}
