import SwiftUI

struct PersonnelLossesView: View {
    private var losses: [LossPersonnel] = LossPersonnel.Losses
    
    var body: some View {
        NavigationView {
            List {
                ForEach(losses) {
                    loss in NavigationLink(destination: PersonnelLossDetailView(loss: loss)) {
                        VStack(alignment: .leading) {
                            Text("Date: \(loss.date)")
                        }
                    }
                }
            }.navigationTitle("Russia losses personnel")
        }
    }
}

struct PersonnelLossesView_Previews: PreviewProvider {
    static var previews: some View {
        PersonnelLossesView()
    }
}
