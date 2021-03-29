//
//  MemoryGameViewModel.swift
//  Memorize
//
//  Created by Javier Alejandro Quiles on 26/03/2021.
//

import SwiftUI

class MemoryGameViewModel: ObservableObject {
    @Published private var model = MemoryGameViewModel.createMemoryGame()

    static func createMemoryGame() -> MemoryGameModel<String> {
        let emojis = ["🇦🇷", "🇧🇷", "🇵🇹"]
        return MemoryGameModel<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }

    var cards: Array<MemoryGameModel<String>.Card> {
        model.cards
    }

    func choose(card: MemoryGameModel<String>.Card) {
        model.choose(card: card)
    }
}
