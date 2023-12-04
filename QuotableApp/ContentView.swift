//
//  ContentView.swift
//  QuotableApp
//
//  Created by Martin Martinez on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = QuoteViewModel()
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 650)
                .foregroundColor(.indigo)
                .overlay(
                    VStack {
                        VStack {
                            Text(viewModel.quoteResponse.content)
                                .font(.largeTitle)
                                .foregroundColor(.white)
                                .bold()
                                .padding(.horizontal)
                            Text(viewModel.quoteResponse.author)
                                .font(.title)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.top)
                        }
                    }
                )
            Button {
                viewModel.makeRequest()
            } label: {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundColor(.clear)
                    .frame(width: 150, height: 50)
                    .overlay(
                        Text("New Quote")
                            .foregroundColor(.black)
                            .bold()
                            .font(.title2)
                    )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
