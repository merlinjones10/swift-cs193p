//
//  ContentView.swift
//  Memorize
//
//  Created by Merlin Jones on 02/04/2022.
//

import SwiftUI

struct ContentView: View {
    var emojis: [String] = ["✈️", "🦋", "🐞", "🍉"]
    var body: some View {
        HStack {
            ForEach(emojis,id: \.self, { emoji in
                CardView(content: emoji)
                
            })
//            ForEach(emojis,id: \.self,  content: { emoji in
//                CardView(content: emoji)
//
//            })
            // content in this example is an arg that is a function so does not need to be openly decalred
//            CardView(content: emojis[0])
//            CardView(content: emojis[1])
//            CardView(content: emojis[2])
//            CardView(content: emojis[3])
            
        }.padding()
    }
}

struct CardView: View {
    var content: String
   @State var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            if isFaceUp {
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.white)
                shape.stroke(Color.red, lineWidth: 4)
                Text(content).font(.largeTitle).foregroundColor(Color.red)
            } else {
                RoundedRectangle(cornerRadius: 12).fill().foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
            }
            
        }.onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}






































struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .previewInterfaceOrientation(.portrait)
    }
}
