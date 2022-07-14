import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: PersonnelLossesView()) {
                    VStack(alignment: .leading) {
                        Text("Russia losses personnel")
                    }
                }
                NavigationLink(destination: EquipmentLossesView()) {
                    VStack(alignment: .leading) {
                        Text("Russia losses equipment")
                    }
                }
            }.navigationTitle("Russia losses")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
