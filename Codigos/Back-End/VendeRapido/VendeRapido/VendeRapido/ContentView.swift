//
//  ContentView.swift
//  VendeRapido
//
//  Created by Turma01-Backup on 27/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var api = ViewModel()
    @State var busca = " "
    
    var body: some View {
        TabView {
            NavigationStack {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.gray.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
                        .edgesIgnoringSafeArea(.all)
                    
                    ScrollView {
                        
                        VStack {
                            
                            Image("Car")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .padding(.vertical, -30)
                            
                            Text("Vende Rápido")
                                .font(.largeTitle)
                                .foregroundStyle(Color("Vermelho"))
                                .bold()
                                .padding(.vertical, -10)
                                .font(.custom("NomeDaFonte", size: 24))
                            
                            HStack {
                                
                                Spacer()
                                
                                TextField ("Buscar", text: $busca)
                                    .background(Color.white)
                                    .frame(width: 300, height: 40)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                
                                Image(systemName: "magnifyingglass.circle.fill")
                                    .foregroundStyle(Color("Vermelho"))
                                
                                Spacer ()
                            }
                            .offset(x: 6, y: 5)
                            
                            ForEach(api.post, id: \.self){ index in
                                NavigationLink(destination: DetailsView(recebe: index)) {
                                    VStack {
                                        AsyncImage(url: (URL(string: index.carroImage!))) { index in
                                            index.resizable()
                                            
                                        } placeholder: {
                                            ProgressView()
                                        }
                                        .frame(width: 320, height: 195)
                                        
                                        HStack{
                                            Text(index.carro!)
                                                .font(.title3)
                                                .bold()
                                                .foregroundStyle(Color.black)
                                            
                                            Spacer()
                                        } // HStack
                                        .offset(x: 20)
                                        
                                        HStack {
                                            Text(index.anoCarro!)
                                                .foregroundStyle(Color.black)
                                            Spacer()
                                            
                                            Text("5.000,00")
                                                .foregroundStyle(Color.black)
                                                .bold()
                                                .padding(.horizontal, 25)
                                        }
                                        .offset(x: 20)
                                        HStack{
                                            AsyncImage(url: (URL(string: index.pessoaImage!))) { index in
                                                index.resizable()
                                                
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .frame(width: 40, height: 40)
                                            .scaledToFill()
                                            .clipShape(Circle())
                                            
                                            Text(index.nome!)
                                                .foregroundStyle(Color.black)
                                                .bold()
                                            
                                            Spacer()
                                        } // HStack
                                        .offset(x: 20)
                                    } // VStack
                                    .padding()
                                    .background(Color.white)
                                    .frame(maxWidth: 355)
                                    .cornerRadius(10)
                                    
                                } //NavigationStack
                                
                            } //ForEach
                            .padding(.vertical, 5)
                        } // VStack
                        .onAppear(){
                            api.fetch()
                        }
                        
                    } //ScrollView
                    
                } // ZStack
            } //NavigationStack
            .tabItem {
                Label("Procurar", systemImage: "magnifyingglass")
            }
            
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person.crop.circle.fill")
                }
        }
        .accentColor(.red)
        
    }
}

#Preview {
    ContentView()
}
