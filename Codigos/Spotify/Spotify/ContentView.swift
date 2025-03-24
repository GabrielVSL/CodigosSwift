//
//  ContentView.swift
//  Spotify
//
//  Created by Turma01-Backup on 24/03/25.
//

import SwiftUI

struct Musica : Identifiable {
    var id: Int
    var nome: String
    var artista: String
    var capa: String
}

var arrayMusicas = [
    Musica(id: 1, nome: "Esperar Pra Ver", artista: "Evinha", capa: "https://cdn-images.dzcdn.net/images/cover/8697ec8d15ed3e1a67855f005795bad9/0x1900-000000-80-0-0.jpg"),
    Musica(id: 2, nome: "Heresia", artista: "Djonga", capa: "https://www.rocinantetresselos.com/image/cache/catalog/capa-site-heresia-1000x1000.jpg"),
    Musica(id: 3, nome: "GNX", artista: "Kendrick Lamar", capa: "https://upload.wikimedia.org/wikipedia/pt/9/93/Kendrick_Lamar_-_GNX.png"),
    Musica(id: 4, nome: "Chegue", artista: "Evinha", capa: "https://cdn-images.dzcdn.net/images/cover/8697ec8d15ed3e1a67855f005795bad9/0x1900-000000-80-0-0.jpg"),
    Musica(id: 5, nome: "Festa no Caos", artista: "Djonga", capa: "https://www.rocinantetresselos.com/image/cache/catalog/capa-site-heresia-1000x1000.jpg"),
    Musica(id: 6, nome: "HUMBLE.", artista: "Kendrick Lamar", capa: "https://upload.wikimedia.org/wikipedia/pt/9/93/Kendrick_Lamar_-_GNX.png"),
    Musica(id: 7, nome: "Vida Loka", artista: "Racionais", capa: "https://upload.wikimedia.org/wikipedia/pt/6/62/Nada_como_um_dia_ap%C3%B3s_o_outro_dia.jpg"),
    Musica(id: 8, nome: "Diário de um Detento", artista: "Racionais", capa: "https://upload.wikimedia.org/wikipedia/pt/6/62/Nada_como_um_dia_ap%C3%B3s_o_outro_dia.jpg"),
    Musica(id: 9, nome: "Cavaleiro", artista: "BK", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKiHZUVvZc48gGnV8nvxrin4xPXJ6R0EPFvQ&s"),
    Musica(id: 10, nome: "Suave", artista: "BK", capa: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKiHZUVvZc48gGnV8nvxrin4xPXJ6R0EPFvQ&s")
]


struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.black]), startPoint: .top, endPoint: .bottom)
                
                    .ignoresSafeArea()
                ScrollView {
                    
                    VStack {
                        AsyncImage(url: URL(string: "https://i.scdn.co/image/ab67616100005174a83e9f0e901c17791b83be8b")) { image in
                            image.resizable()
                        } placeholder: {
                            ProgressView()
                        }
                        .frame(width: 250, height: 250)
                        
                        HStack {
                            Text("Coisa de maluco")
                                .font(.title)
                                .foregroundStyle(.white)
                                .padding(.horizontal, 15)
                                .bold()
                            
                            Spacer()
                        } //HStack
                        
                        HStack {
                            AsyncImage(url: URL(string:"https://i.pinimg.com/originals/2d/4b/5d/2d4b5d1234e2245f8277bde89dc2995d.jpg")) { image in
                                image.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            
                            Text("Maria Eduarda")
                                .foregroundStyle(.white)
                            
                            Spacer()
                        } //HStack
                        .padding()
                        
                        ForEach(arrayMusicas) { musica in
                            NavigationLink(destination: PlayerView(musica: musica)) {
                                //var : musica
                                HStack {
                                    AsyncImage(url: URL(string: musica.capa)) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    }
                                    .frame(width: 55, height: 55)
                                    .padding(.horizontal, 10)
                                    
                                    VStack (alignment: .leading) {
                                        Text(musica.nome)
                                            .foregroundStyle(.white)
                                            .bold()
                                        Text(musica.artista)
                                            .foregroundStyle(.white)
                                            .font(.system(size: 15))
                                    }
                                    
                                    Spacer()
                                    
                                }
                                .padding(5)
                            } //NavigationLink
                        } //ForEach
                        
                        Spacer()
                        
                        Text("Sugeridos")
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                        
                        ScrollView(.horizontal) {
                            
                            
                            
                            HStack {
                                ForEach(arrayMusicas) { musica in
                                    NavigationLink(destination: SugeridosView()) {
                                        VStack {
                                            AsyncImage(url: URL(string: musica.capa)) { image in
                                                image.resizable()
                                            } placeholder: {
                                                ProgressView()
                                            }
                                            .frame(width: 180, height: 180)
                                            
                                            Text(musica.nome)
                                                .bold()
                                                
                                        } //VStack
                                    }
                                    .accentColor(.white)
                                }
                            } //HStack
                            .padding()
                        }
                        
                    }  //VStack
                    
                } //ScrollView
                
            } //ZStack
            
        } //NavigationStack
    }
}

#Preview {
    ContentView()
}
