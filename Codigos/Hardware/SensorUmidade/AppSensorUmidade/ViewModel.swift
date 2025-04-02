//
//  ViewModel.swift
//  AppSensorUmidade
//
//  Created by Turma01-Backup on 01/04/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var umidade: [Umidade] = []
    
    func fetch(){
        
        guard let url = URL(string: "http://192.168.128.239:1880/getUmidade") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                
                let parsed = try JSONDecoder().decode([Umidade].self, from: data)
                
                DispatchQueue.main.async {
                    
                    self?.umidade = parsed
                }
            } catch {
                
                print (error)
            }
        }
        
        task.resume()
    }
}
