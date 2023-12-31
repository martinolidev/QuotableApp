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
    
    var quoteResponse: QuoteContent
    
    init() {
         quoteResponse = QuoteContent(content: "I'm just a beginner", author: "By martinoli")
    }
    
    func fetchQuote() -> QuoteContent {
        //We make a request with the type GET, then we check a range of
        //status codes between 200 and 299, means the reponse is OK
        //then we try to decode the json into a QuoteContent struct
        AF.request("https://api.quotable.io/random", method: .get).validate(statusCode: 200...299).responseDecodable (of: QuoteContent.self) {
            response in
            
            if let content = response.value {
                self.quoteResponse = QuoteContent(content: content.content, author: content.author)
            } else {
                print(response.error?.responseCode ?? "No code error")
            }
            
        }
        
        return quoteResponse
    }
    
}
