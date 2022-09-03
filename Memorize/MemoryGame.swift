
// THIS IS THE MODEL i.e the logic
// My model is a struct. sorta like a class.

import Foundation


struct MemoryGame<CardContent> {
   private(set) var cards: Array<Card>
    
    mutating func choose(_ card: Card) {
        let chosenIndex = index(of: card)
        cards[chosenIndex].isFaceUp.toggle()
    }
    
    func index(of card: Card) -> Int {
        for index in 0..<cards.count {
            if cards[index].id == card.id {
                return index
            }
        }
        return 0
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content : content, id : pairIndex*2))
             cards.append(Card(content : content, id : pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}

// func choose(_ card: Card), the _ makes is a externally unnamed variable

// MemoryGame.card === Card, x inside the struct not outside as it references a particula type of card. 

// CardContent type is a 'dont care', needs to be declared at the top
