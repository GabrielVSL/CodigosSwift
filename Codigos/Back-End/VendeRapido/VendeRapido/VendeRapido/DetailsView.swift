//
//  DetailsView.swift
//  VendeRapido
//
//  Created by Turma01-Backup on 27/03/25.
//

import SwiftUI

struct DetailsView: View {
    
    @StateObject var api = ViewModel()
    
    @State var recebe : Post?
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.gray.opacity(0.8)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
                .edgesIgnoringSafeArea(.all)
            NavigationStack {
                ScrollView {
                    VStack {
                        VStack {
                            Text("Detalhes")
                                .font(.largeTitle)
                                .bold()
                                .foregroundStyle(Color("Vermelho"))
                            
                            AsyncImage(url: (URL(string: recebe!.carroImage! ))) { index in
                                index.resizable()
                            } placeholder: {
                                ProgressView()
                            }
                            .frame(width: 320, height: 195)
                            Text(recebe!.carro!)
                                .font(.title3)
                                .bold()
                            
                            HStack {
                                Text(recebe!.anoCarro! )
                                    .foregroundStyle(Color.black)
                                    .padding(.horizontal, 20)
                                Spacer()
                                
                                Text("5.000,00") // troca para recebe!.preco! quanto o postman voltar
                                    .foregroundStyle(Color.black)
                                    .bold()
                                    .padding(.horizontal, 20)
                            } // HStack
                            
                            HStack{
                                AsyncImage(url: (URL(string: recebe!.pessoaImage! ))) { index in
                                    index.resizable()
                                    
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 40, height: 40)
                                .scaledToFill()
                                .clipShape(Circle())
                                .offset(x: 20)
                                
                                Text(recebe!.nome!)
                                    .bold()
                                    .foregroundStyle(Color.black)
                                    .offset(x: 20)
                                Spacer()
                            } // HStack
                            
                            
                        } // VStack
                        .padding()
                        .background(Color.white)
                        .cornerRadius(5)
                        .frame(maxWidth: 350)
                        
                        VStack {
                            HStack {
                                Text("Sugeridos")
                                    .bold()
                                    .font(.largeTitle)
                                    .foregroundStyle(Color("Vermelho"))
                                    .padding()
                                Spacer()
                            }
                            .padding()
                            
                            ScrollView(.horizontal){
                                HStack{
                                    ForEach(api.post, id: \.self) { index in
                                        NavigationLink(destination: DetailsView(recebe: index)) {
                                            VStack {
                                                AsyncImage(url: (URL(string: index.carroImage!))) { index in
                                                    index.resizable()
                                                } placeholder: {
                                                    ProgressView()
                                                }
                                                .frame(width: 160, height: 98)
                                                .padding()
                                                
                                                Text(index.carro!)
                                                    .offset(y: -10)
                                                    .bold()
                                                HStack {
                                                    
                                                    Text(index.anoCarro!)
                                                    
                                                    Spacer()
                                                    
                                                    Text("7.499,99")
                                                } //HStack
                                                .padding(.bottom, 10)
                                            } //VStack
                                            .padding(.horizontal, 20)
                                            .background(Color.white)
                                            .cornerRadius(5)
                                        } // NavigationLink
                                        .accentColor(Color.black)
                                    } //ForEach
                                } // HStack
                            }// ScrollView
                        } //VStack
                    }//VStack
                } //ScrollView
            } //NavigationStack
        } // ZStack
        .onAppear(){api.fetch()}
    }
}

#Preview {
    DetailsView()
}
