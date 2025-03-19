//
//  ContentView.swift
//  Aula1-Desafio
//
//  Created by Turma01-Backup on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var nome: String = ""
    @State private var showAlert = false
    var body: some View {
        ZStack {
            
            Image("cruzeiro")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.7)
            
            
            VStack {
                Text("Bem Vindo,\(nome)")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                
                TextField("Digite seu nome", text: $nome)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 350)
                Spacer()
                Button(action: {showAlert = true}) {
                    Text("ALERTA")
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                }
                .padding()
                .alert(isPresented: $showAlert)	
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
