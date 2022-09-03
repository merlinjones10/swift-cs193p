
// THIS IS THE MODEL i.e the logic
// My model is a struct. sorta like a class.

import Foundation


struct MemoryGame<CardContent> {
   private(set) var cards: Array<MemoryGame.Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))

        }
    }
    
    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}

// func choose(_ card: Card), the _ makes is a externally unnamed variable

// MemoryGame.card === Card, x inside the struct not outside as it references a particula type of card. 

// CardContent type is a 'dont care', needs to be declared at the top
