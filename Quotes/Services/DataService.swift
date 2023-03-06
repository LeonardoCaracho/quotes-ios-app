//
//  DataService.swift
//  Quotes
//
//  Created by Leonardo Caracho on 05/03/23.
//

import Foundation

class DataService {
    static func getLocalData() -> [Quote] {
        let pathString = Bundle.main.path(forResource: "quotes", ofType: "json")
        
        guard pathString != nil else {
            return [Quote]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let quotesData = try decoder.decode([Quote].self, from: data)
                return quotesData
            } catch {
                print(error)
            }
            
        } catch {
            print(error)
        }
        
        return [Quote]()
    }
}
