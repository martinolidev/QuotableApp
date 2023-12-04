//
//  QuoteViewModel.swift
//  QuotableApp
//
//  Created by Martin Martinez on 04/12/23.
//

import Foundation

class QuoteViewModel: ObservableObject {
    @Published var quoteResponse: QuoteContent
    
    init() {
        quoteResponse = QuoteContent(content: "Tap the button to get a quote!", author: "")
    }
    
    let model = QuoteModel()
    
    func makeRequest() {
        quoteResponse = model.fetchQuote()
    }
}
