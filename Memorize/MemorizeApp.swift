//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Merlin Jones on 02/04/2022.
// Top level app

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel : game)
        }
    }
}
