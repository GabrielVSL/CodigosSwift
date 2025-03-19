//
//  ContentView.swift
//  Aula1-D2
//
//  Created by Turma01-Backup on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image("gaugau")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            Spacer()
            VStack (spacing: 10) {
                Text("Gau! gau gau")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text("Cabeca de nos todos")
                    .foregroundColor(.green)
                Text("G? 3? X? X? X?")
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
