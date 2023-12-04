//
//  ContentView.swift
//  QuotableApp
//
//  Created by Martin Martinez on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 16)
                .frame(height: 650)
                .foregroundColor(.indigo)
                .overlay(
                    VStack {
                        Text("If opportunity doesn't knock, build a door.")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.horizontal)
                    }
                )
            Button {
                //code here
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
