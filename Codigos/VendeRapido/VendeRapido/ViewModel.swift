//
//  ViewModel.swift
//  VendeRapido
//
//  Created by Turma01-Backup on 27/03/25.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var post: [Post] = []
    
    func fetch(){
        
        guard let url = URL(string: "http://127.0.0.1:1880/gabrielGet") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do {
                
                let parsed = try JSONDecoder().decode([Post].self, from: data)
                
                DispatchQueue.main.async {
                    
                    self?.post = parsed
                }
            } catch {
                
                print (error)
            }
        }
        
        task.resume()
    }
}
