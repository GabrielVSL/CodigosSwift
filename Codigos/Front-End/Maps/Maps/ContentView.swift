//
//  ContentView.swift
//  Mapas
//
//  Created by Turma01-Backup on 25/03/25.
//

import SwiftUI
import MapKit

struct Location: Identifiable, Hashable {
    let id = UUID()
    let nome: String
    let foto: String
    let descricao: String
    let latitude: Double
    let longitude: Double
}

var locations: [Location] = [
    Location(nome: "Rio de Janeiro", foto: "https://example.com/rio.jpg", descricao: "Cidade maravilhosa", latitude: -22.9068, longitude: -43.1729),
    Location(nome: "São Paulo", foto: "https://example.com/sp.jpg", descricao: "Maior cidade do Brasil", latitude: -23.5505, longitude: -46.6333),
    Location(nome: "Salvador", foto: "https://example.com/salvador.jpg", descricao: "Cidade histórica da Bahia", latitude: -12.9714, longitude: -38.5014),
    Location(nome: "Fortaleza", foto: "https://example.com/fortaleza.jpg", descricao: "Cidade litorânea", latitude: -3.7172, longitude: -38.5433)
]

struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: locations[0].latitude, longitude: locations[0].longitude),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    @State private var selecionado: Location = locations[0]
    
    var body: some View {
        ZStack {
            
            Map(position: $position)
                .ignoresSafeArea()
            
            VStack {
                Picker("Selecione um lugar", selection: $selecionado) {
                    ForEach(locations) { local in
                        Text(local.nome)
                            .tag(local)
                            .font(.largeTitle)
                            .bold()
                            .background(Color.black)
                    }
                }
                .padding(.horizontal)

                .onChange(of: selecionado) { index in
                    position = MapCameraPosition.region(
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: index.latitude, longitude: index.longitude),
                            span: MKCoordinateSpan(latitudeDelta: 1.1, longitudeDelta: 1.1)
                        )
                    )
                }
                Spacer()
            }
        } // ZStack
    }
}

#Preview {
    ContentView()
}



