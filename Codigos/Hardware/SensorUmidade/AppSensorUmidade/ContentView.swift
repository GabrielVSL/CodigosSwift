//
//  ContentView.swift
//  AppSensorUmidade
//
//  Created by Turma01-Backup on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var api = ViewModel()
    
    var body: some View {
        ZStack {
            Color("fundo")
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Spacer()
                    
                    Text("Medidor de Umidade")
                        .font(.system(size: 35))
                        .padding(20)
                        .bold()
                    
                    Spacer()
                } //HStack
                .padding(.top, 50)
                VStack {
                    Text("Último valor registrado:")
                        .font(.title3)
                    if let ultimaUmidade = api.umidade.first {
                        Text(ultimaUmidade.umidade ?? "Umidade não disponivel")
                            .font(.system(size: 40))
                            .bold()
                    }
                }
                .frame(width: 300, height: 200)
                .background(Color("azul"))
                .cornerRadius(10)
                
                Text("Historico de Umidade")
                    .font(.title)
                    .bold()
                
                ScrollView {
                    VStack {
                        
                        ForEach(api.umidade, id: \.self) { u in
                            if u.umidade != "0.00" {
                                Text(u.umidade!)
                                    .font(.title3)
                            }
                        }
                        .padding()
                        .frame(width: 330, height: 50)
                        .background(Color("lista"))
                        .cornerRadius(5)
                    }
                }
            }
            .foregroundStyle(Color.white)
            .edgesIgnoringSafeArea(.all)
            .onAppear{
                api.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
