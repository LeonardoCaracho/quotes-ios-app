//
//  QuoteDetailsView.swift
//  Quotes
//
//  Created by Leonardo Caracho on 05/03/23.
//

import SwiftUI

struct QuoteDetailsView: View {
    var authorQuotes: [Quote]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text(authorQuotes.first!.author)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                
                ForEach(authorQuotes) { quote in
                    Text(quote.quote)
                        .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

struct QuoteDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuotesModel()
        QuoteDetailsView(authorQuotes: model.quotes)
    }
}
