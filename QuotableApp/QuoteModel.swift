//
//  QuoteModel.swift
//  QuotableApp
//
//  Created by Martin Martinez on 04/12/23.
//

import Foundation
import Alamofire

struct QuoteContent: Codable {
    let content: String
    let author: String
}

class QuoteModel {
    
    func fetchQuote() {
        //AF.request("https://api.quotable.io/random")
    }
    
}
