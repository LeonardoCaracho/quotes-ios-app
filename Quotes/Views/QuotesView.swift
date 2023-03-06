//
//  ContentView.swift
//  Quotes
//
//  Created by Leonardo Caracho on 05/03/23.
//

import SwiftUI

struct QuotesView: View {
    @ObservedObject var model = QuotesModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach (model.quotes) { quote in
                    NavigationLink(destination: QuoteDetailsView(authorQuotes: model.getQuotesByAuthor(author: quote.author)), label: {
                        ZStack {
                            Image(quote.background)
                                .resizable()
                                .frame(height: 300.0)
                                .scaledToFit()
                                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                .padding(/*@START_MENU_TOKEN@*/[.leading, .bottom, .trailing], 8.0/*@END_MENU_TOKEN@*/)
                            
                            
                            VStack(alignment: .leading) {
                                Text(quote.quote)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                                
                                Text("- \(quote.author)")
                                    .font(.footnote)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.leading)
                                    .shadow(radius: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                            }
                        }
                    })
                }
            }.navigationTitle("Quotes")
        }
    }
}

struct QuotesView_Previews: PreviewProvider {
    static var previews: some View {
        QuotesView()
    }
}
