import SwiftUI

struct EquipmentLossesView: View {
    private var losses: [LossEquipment] = LossEquipment.Losses
    
    var body: some View {
        NavigationView {
            List {
                ForEach(losses) {
                    loss in NavigationLink(destination: EquipmentLossDetailView(loss: loss)) {
                        VStack(alignment: .leading) {
                            Text("Date: \(loss.date)")
                        }
                    }
                }
            }.navigationTitle("Russia losses equipment")
        }
    }
}

struct EquipmentLossesView_Previews: PreviewProvider {
    static var previews: some View {
        EquipmentLossesView()
    }
}
