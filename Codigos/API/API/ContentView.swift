//
//  ContentView.swift
//  API
//
//  Created by Turma01-Backup on 26/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .frame(width: 400,height: 200)
                    .ignoresSafeArea()
                
                
                AsyncImage(url: URL(string: "https://static.wikia.nocookie.net/logopedia/images/9/9c/HarryPotter.png/revision/latest?cb=20160624203951")) { index in
                    index.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 350, height: 120)
                .offset(y: -45)
                
            } //ZStack
            
            VStack {
                
                Text("Personagens")
                    .font(.title)
                    .bold()
                    .offset(y: -45)
                
                ScrollView{
                    ForEach(viewModel.personagens) { index in
                        NavigationLink(destination: DetailsView(recebe: index)){
                            HStack  {
                                AsyncImage(url: URL(string: index.image!)){ index in
                                    index.resizable()
                                } placeholder: {
                                    ProgressView()
                                }
                                .frame(width: 90, height: 100)
                                .padding()
                                
                                Text(index.name!)
                                    .padding()
                                    .font(.title2)
                                    .bold()
                                
                                Spacer()
                            } // HStack
                            .accentColor(.black)
                            .frame(height: 120)
                            .frame(maxWidth: 350)
                            .background(Color.yellow)
                            .cornerRadius(15)
                            .shadow(color: .black, radius: 2, x: 2, y: 2)
                            
                        } //NavigationLink
                        
                    } //ForEach
                    
                } //ScrollView
                .onAppear(){
                    viewModel.fetch()
                }
                .offset(y: -45)
                .ignoresSafeArea(.all)
                
            } // VStack
            
        } //NavigationSTack
    }
}
    
#Preview {
    ContentView()
}
