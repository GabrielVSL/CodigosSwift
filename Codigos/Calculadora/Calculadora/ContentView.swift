//
//  ContentView.swift
//  Calculadora
//
//  Created by Turma01-Backup on 20/03/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var km: Double = 0.0
    @State private var h: Double = 0.0
    @State private var resultado: Double = 0.0
    
    
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            if resultado > 0 && resultado < 10{
                Color.verdeClaro.ignoresSafeArea()
            } else if resultado > 9.9 && resultado < 30 {
                Color.azulClaro.ignoresSafeArea()
            } else if resultado > 29.9 && resultado < 70 {
                Color.laranjaClaro.ignoresSafeArea()
            } else if resultado > 69.9 && resultado < 90 {
                Color.amareloClaro.ignoresSafeArea()
            } else if resultado > 89.9 {
                Color.vermelhoClaro.ignoresSafeArea()
            }
            
            VStack {
                
                Text("Digite a distancia (Km)")
                
                TextField("0", value: $km, format: .number)
                    .padding()
                    .frame(width: 250, height: 40)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                
                Text("Digite o tempo (h)")
                
                TextField("0", value: $h, format: .number)
                    .padding()
                    .frame(width: 250, height: 40)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    resultado = km / h
                }, label: {
                    Text("Calcular")
                        .frame(width: 100, height: 35)
                        .background(Color.black)
                        .cornerRadius(10.0)
                        .foregroundColor(Color.vermelhoClaro)
                })
                
                Spacer()
                
                Text("\(resultado, specifier: "%.2f") Km/h")
                    .font(.title)
                
                Spacer()
                
                if resultado == 0 {
                    Image("Interrogacao")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 275, height: 275)
                        .cornerRadius(150.0)
                }
                
                if resultado > 0 && resultado < 10 {
                    Image("chevette")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 275, height: 275)
                        .cornerRadius(150.0)
                    
                } else if resultado > 9.9 && resultado < 30{
                    Image("fusca")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 275, height: 275)
                        .cornerRadius(150.0)
                    
                } else if resultado > 29.9 && resultado < 70{
                    Image("uno")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 275, height: 275)
                        .cornerRadius(150.0)
                    
                } else if resultado > 69.9 && resultado < 90{
                    Image("porche")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 275, height: 275)
                        .cornerRadius(150.0)
                    
                } else if resultado > 89.9 {
                    Image("ferrari")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 275, height: 275)
                        .cornerRadius(150.0)
                }
                
                Spacer()
                
                    HStack {
                        VStack{
                            Text("Chevette")
                            Text("Fusca")
                            Text("Uno + escada")
                            Text("Porche")
                            Text("Ferrari")
                        }
                        .padding()
                        .foregroundColor(.white)
                        VStack{
                            Text("(0 - 9.9 Km/h)")
                            Text("(10 - 29.9 Km/h)")
                            Text("(30 - 69.9 Km/h)")
                            Text("(70 - 89.9 Km/h)")
                            Text("(90 - 130 Km/h)")
                        }
                        .foregroundColor(.white)
                        VStack{
                            Circle()
                                .fill(Color.verdeClaro)
                                .frame(width: 17)
                            
                            Circle()
                                .fill(Color.azulClaro)
                                .frame(width: 17)
                            
                            Circle()
                                .fill(Color.laranjaClaro)
                                .frame(width: 17)
                            
                            Circle()
                                .fill(Color.amareloClaro)
                                .frame(width: 17)
                            
                            Circle()
                                .fill(Color.vermelhoClaro)
                                .frame(width: 17)
                        }
                        .padding()
                    } //HStack
                    .background(Color.black)
                    .cornerRadius(15.0)
                
            } //VStack
            
        } //ZStack
    }
}

#Preview {
    ContentView()
}
