import SwiftUI

struct PersonnelLossDetailView: View {
    let loss: LossPersonnel
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Date: \(loss.date)").bold()
            Text("Day: \(loss.day)")
            Text("Personnel: \(loss.personnel)")
            Text("Personnel*: \(loss.personnelWithStar)")
            Text("Pow: \(loss.pow)")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        PersonnelLossDetailView(loss: LossPersonnel.sampleLoss)
    }
}
