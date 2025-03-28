//
//  PlayerView.swift
//  Spotify
//
//  Created by Turma01-Backup on 24/03/25.
//

import SwiftUI

struct PlayerView: View {
    var musica: Musica = Musica(id: 1, nome: "Esperar Pra Ver", artista: "Evinha", capa: "https://cdn-images.dzcdn.net/images/cover/8697ec8d15ed3e1a67855f005795bad9/0x1900-000000-80-0-0.jpg")

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.black]), startPoint: .top, endPoint: .bottom)
            
                .ignoresSafeArea()
            VStack {
                
                
                AsyncImage(url:URL(string: musica.capa)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width:250, height: 250)
                
                Text(musica.nome)
                    .font(.title)
                    .foregroundStyle(.white)
                    .bold()
                
                Text(musica.artista)
                    .foregroundStyle(.white)
                
                
                HStack {
                    Image(systemName: "shuffle")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .scaledToFit()
                        .padding()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .scaledToFit()
                        .padding()
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .scaledToFit()
                        .padding(35)
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .scaledToFit()
                        .padding()
                    Image(systemName: "repeat")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .scaledToFit()
                        .padding()
                }
                .padding()
                .foregroundColor(.white)
                
                
                
            } //VStack
        }
    }
}

#Preview {
    PlayerView()
}
