// THIS IS My VIEW MODEL, intermediary between model and view,
// in this example we will CREATE an instance of model in the view model.


// private means only the view model can see the model
// private(set) means things can see but not change

// static let makes globally unchanged
import SwiftUI


class EmojiMemoryGame {
    
    static let emojis = ["🚗", "🛴", "✈️", "🛵", "⛵️", "🚎", "🚐", "🚛", "🛻", "🏎", "🚂", "🚊", "🚀", "🚁", "🚢", "🛶", "🛥", "🚞", "🚟", "🚃"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex]
        } // implicit return
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cards : Array<MemoryGame<String>.Card> {
        return model.cards
    }
}

