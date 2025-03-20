//
//  ContentView.swift
//  Teste
//
//  Created by Turma01-Backup on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text(" ")
                    .frame(width: 100, height: 100)
                    .background(Color.black)
                
                Spacer()
                Text(" ")
                    .frame(width: 100, height: 100)
                    .background(Color.blue)
            }
            Spacer()
            
            HStack {
                Text(" ")
                    .frame(width: 100, height: 100)
                    .background(Color.red)
                
                Spacer()
                
                Text(" ")
                    .frame(width: 100, height: 100)
                    .background(Color.green)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
