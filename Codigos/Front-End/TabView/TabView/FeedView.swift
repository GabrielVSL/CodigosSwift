import SwiftUI

struct FeedView: View {
    @State private var busca: String = ""

    var body: some View {
        VStack {
            TextField("Buscar", text: $busca)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 300)
            
            Spacer()
            
            Image("GauGau")
                .resizable()
                .frame(width: 250, height: 250)
                .cornerRadius(30)
            
            Text("Gau? GauGau?")
            
            Spacer()
        }
    }
}

#Preview {
    FeedView()
}
