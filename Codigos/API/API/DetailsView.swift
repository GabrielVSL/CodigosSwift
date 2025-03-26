//
//  DetailsView.swift
//  API
//
//  Created by Turma01-Backup on 26/03/25.
//

import SwiftUI



struct DetailsView: View {
    
    // @StateObject var info = ViewModel()
    @State var recebe : HaPo?
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Spacer()
                Text("Informations")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                AsyncImage(url: URL(string: recebe!.image!)) { index in
                    index
                        .resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 300, height: 300)
                .scaledToFill()
                .cornerRadius(10)
                
                //.frame()
                
                Text((recebe!.name!))
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
                Text(recebe!.house!)
                    .font(.title3)
                    .foregroundColor(.white)
                
                Spacer()
                
                HStack {
                    Text("Casa: \(recebe!.house!)")
                        .bold()
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    Spacer()
                } //HStack
                HStack{
                    Text("Nascimento: \(recebe!.dateOfBirth!)")
                        .bold()
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    Spacer()
                } //HStack
                HStack{
                    Text("Ator: \(recebe!.actor!)")
                        .bold()
                        .padding(.horizontal)
                        .foregroundColor(.white)
                    Spacer()
                    
                } //HStack
                
                Spacer()
            }
        } //ZStack
    }
}

#Preview {
    DetailsView()
}
