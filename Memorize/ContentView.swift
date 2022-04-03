//
//  ContentView.swift
//  Memorize
//
//  Created by Merlin Jones on 02/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            CardView(isFaceUp: true)
            CardView(isFaceUp: false)
            CardView(isFaceUp: true)
            
        }.padding()
    }
}

struct CardView: View {
    var isFaceUp: Bool = true
    var body: some View {
        ZStack {
            if isFaceUp {
                let shape = RoundedRectangle(cornerRadius: 20)
                shape.fill().foregroundColor(.white)
                shape
                    .stroke(Color.red, lineWidth: 4)
                
                Text("4")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                
            } else {
                RoundedRectangle(cornerRadius: 12).fill().foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
            }
            
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
