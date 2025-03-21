//
//  ContentView.swift
//  TabView
//
//  Created by Turma01-Backup on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Primeira aba
            NavigationStack {
                // Home
                VStack {
                    HStack {
                        Image(systemName: "paperplane.fill")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .foregroundColor(.purple)
                            .padding()
                        
                        Text("HackaMessage")
                            .font(.custom("HelveticaNeue-Bold", size: 24))
                    } //HStack
                    Spacer()
                    
                    //Perfil 1
                    HStack {
                        NavigationLink(destination: GauView()) {
                            Image("GauGau")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(150)
                                .padding(.horizontal)
                            
                            
                            VStack (alignment: .leading) {
                                Text("GauGau")
                                    .multilineTextAlignment(.leading)
                                    .font(.title)
                                Text("G? 3? X? X? X?")
                            }
                            
                        } //NavigationLink
                        .accentColor(.black)
                        
                        Spacer()
                        
                        Label("New",systemImage: "exclamationmark.bubble.fill")
                            .padding()
                            .foregroundColor(.red)
                    }
                    
                    
                    //Perfil 2
                    HStack {
                        NavigationLink(destination: BortoletoView()){
                            Image("Bortoleto")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(150)
                                .padding(.horizontal)
                                .scaledToFill()
                            
                            
                            VStack (alignment: .leading) {
                                Text("Bortoleto")
                                    .multilineTextAlignment(.leading)
                                    .font(.title)
                                Text("Corrida na China vai s...")
                            }
                            
                            Spacer()
                            
                            Label("New",systemImage: "exclamationmark.bubble.fill")
                                .padding()
                                .foregroundColor(.red)
                        } //NavigationLink
                        .accentColor(.black)
                    } // HStack
                    
                    //Perfil 3
                    HStack {
                        NavigationLink(destination: AlanView()) {
                            Image("Alan")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(150)
                                .padding(.horizontal)
                                .scaledToFill()
                            
                            
                            VStack (alignment: .leading) {
                                Text("Alan")
                                    .multilineTextAlignment(.leading)
                                    .font(.title)
                                Text("Top one from Brazil!")
                            }
                            
                            Spacer()
                            
                            Label("New",systemImage: "exclamationmark.bubble.fill")
                                .padding()
                                .foregroundColor(.red)
                        }
                        .accentColor(.black)
                    }
                    
                    Spacer()
                    
                    
                } //VStack
                
            } //NavigationStack
            .tabItem {
                Label("Conversas", systemImage: "person.2.circle.fill")
                    .foregroundColor(.purple)
            }
            
            FeedView()
                .tabItem {
                    Label("Buscar", systemImage: "globe")
                        .foregroundColor(.purple)
                }
            
        }
    }
}

#Preview {
    ContentView()
}
