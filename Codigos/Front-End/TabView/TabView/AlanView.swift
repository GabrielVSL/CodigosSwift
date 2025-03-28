//
//  AlanView.swift
//  TabView
//
//  Created by Turma01-Backup on 21/03/25.
//

import SwiftUI

struct AlanView: View {
    @State private var mensagem: String = ""
    var body: some View {
        HStack{
            Image("Alan")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(150)
            
            Text("Top one from Brazil")
                .font(.title)
            
            Spacer()
        }
        .padding()
        .background(Color.gray)
        
        HStack {
            VStack (alignment: .leading){
                Text("O cara é profissional!")
                    .padding(10)
                    .font(.system(size: 17))
                    .background(Color.purple)
                    .cornerRadius(90)
                
                Text("Ele gosta de...")
                    .padding(10)
                    .font(.system(size: 17))
                    .background(Color.purple)
                    .cornerRadius(90)
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
    AlanView()
}
