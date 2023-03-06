//
//  QuotesModel.swift
//  Quotes
//
//  Created by Leonardo Caracho on 05/03/23.
//

import Foundation

class QuotesModel: ObservableObject {
    @Published var quotes = [Quote]()
    
    init() {
        quotes = DataService.getLocalData()
    }
    
    func getQuotesByAuthor(author:String) -> [Quote] {
        return quotes.filter {
            $0.author == author
        }
    }
}
