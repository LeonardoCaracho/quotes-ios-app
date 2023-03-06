//
//  quote.swift
//  Quotes
//
//  Created by Leonardo Caracho on 05/03/23.
//

import Foundation

class Quote: Identifiable, Decodable {
    var id:Int
    var quote:String
    var author:String
    var background:String
}
