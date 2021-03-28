//
//  MemoryGameViewModel.swift
//  Memorize
//
//  Created by Javier Alejandro Quiles on 26/03/2021.
//

class MemoryGameViewModel {
    private var model: MemoryGameModel<String> = MemoryGameViewModel.createMemoryGame()

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
