//
//  LiminhaView.swift
//  TabView
//
//  Created by Turma01-Backup on 21/03/25.
//

import SwiftUI

struct BortoletoView: View {
    @State private var mensagem: String = ""
    var body: some View {
        HStack{
            Image("Bortoleto")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(150)
            
            Text("Gabriel Bortoleto")
                .font(.title)
            
            Spacer()
        }
        .padding()
        .background(Color.gray)
        
        HStack {
            VStack (alignment: .leading){
                Text("Corrida na China vai ser melhor")
                    .padding(10)
                    .font(.system(size: 17))
                    .background(Color.purple)
                    .cornerRadius(90)
                
                Text("Vacilei nessa ultima corrida!")
                    .padding(10)
                    .font(.system(size: 17))
                    .background(Color.purple)
                    .cornerRadius(90)
                
                HStack{
                    Spacer()
                    
                    Text("Estou torcendo por você!")
                        .padding(10)
                        .font(.system(size: 17))
                        .background(Color.azulClaro)
                        .cornerRadius(90)
                    
                } // HStack
            } //VStack
            
            Spacer()
        } //HStack
        .padding(.horizontal)
        
        Spacer()
        
        HStack {
            Image(systemName: "paperplane.fill")
                .foregroundColor(.blue)
            TextField("", text: $mensagem)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 330)
                .padding(.vertical)
        } //HStack
    }
}

#Preview {
    BortoletoView()
}
