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
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                
                VStack {
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
    }
}

#Preview {
    ContentView()
}
