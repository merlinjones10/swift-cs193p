//
//  ContentView.swift
//  Memorize
//
//  Created by Merlin Jones on 02/04/2022.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["✈️", "🦋", "🐞", "🍉", "h", "u", "8", "9", "z", "b", "c", "m", ";", "u", "o", "p"]
    @State var emojiCount: Int = 5
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                    ForEach(emojis[0..<emojiCount],id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                }.foregroundColor(.red)
            }

            Spacer()
            HStack{
                removeBtn
                Spacer()
                Text("Remove/Add")
                Spacer()
                addBtn
            }.padding(.horizontal).font(.largeTitle)
        }.padding()
    }
    var removeBtn: some View {
        return Button {
            if emojiCount > 1 {
                emojiCount -= 1 }
        } label: {Image(systemName: "minus.square")
        }
    }
    var addBtn: some View {
        return Button { if emojiCount < 20 {
            emojiCount += 1
        } } label: {Image(systemName: "plus.square")}
        
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
                shape.strokeBorder(Color.red, lineWidth: 2)
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
