//
//  QuoteModel.swift
//  QuotableApp
//
//  Created by Martin Martinez on 04/12/23.
//

import Foundation

struct QuoteContent: Codable {
    let content: String
    let author: String
}

class QuoteModel {
    
    func fetchQuote() {
        guard let url = URL(string: "https://api.quotable.io/random") else { return }
        
        let task = URLSession.shared.dataTask(with: url) {
            (data, error, response) in
            
            if let error = error {
                print(error)
            } else if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let quote = try decoder.decode(QuoteContent.self, from: data)
                    print(quote.content)
                } catch {
                    print("Error to decode data")
                }
            }
        }
        task.resume()
    }
    
}
