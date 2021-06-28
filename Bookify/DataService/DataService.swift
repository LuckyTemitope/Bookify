//
//  DataService.swift
//  Bookify
//
//  Created by Lucky Osunbiyi on 2021-06-27.
//

import Foundation

class DataService {
    
    
    static func getLocalData() -> [Bookify] {
        
        let pathString = Bundle.main.path(forResource: "bookify", ofType: "json")
        
        guard pathString != nil else {
            return [Bookify]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let bookData = try decoder.decode([Bookify].self, from: data)
                
                for b in bookData {
                    b.id = UUID()
                }
                
                return bookData
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        
        return [Bookify]()
    }
    
}
