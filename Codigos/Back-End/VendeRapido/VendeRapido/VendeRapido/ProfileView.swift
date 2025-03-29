//
//  ProfileView.swift
//  VendeRapido
//
//  Created by Turma01-Backup on 29/03/25.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var api = ViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.gray.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: "https://conteudo.imguol.com.br/c/noticias/30/2023/02/03/victor-coelho-1675430507059_v2_960x960.jpg")) { index in
                        index.resizable()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    
                    VStack{
                        Text ("João Henrique Lage Junior")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(Color.white)
                    }
                    HStack {
                        VStack(alignment: .leading){
                            Text("Idade: 45 anos")
                            Text("Vendendo há: 4 anos")
                        } // VStack
                        .foregroundStyle(Color.white)
                        
                        Spacer()
                        
                    } // HStack
                    .padding(.horizontal, 40)
                    .padding(.vertical, 10)
                    Divider()
                        .background(Color.black.opacity(1))
                        .frame(height: 10)
                        .padding(.horizontal)
                        .shadow(radius: 10)
                    
                    VStack{
                        Image("Interrogacao")
                            .resizable()
                            .frame(width: 100,height: 100)
                        Text("Nenhum carro postado ainda!")
                            .foregroundStyle(Color("Vermelho"))
                            .bold()
                    }
                    .padding(.top, 110)
                    
                } // VStack
                
            }//ScrollView
        } //ZStack
    }
}

#Preview {
    ProfileView()
}
