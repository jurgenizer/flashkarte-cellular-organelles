//
//  Deck.swift
//  FlashKarte
//
//  Created by Jurgen Geitner on 2016/01/23.
//

/*
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Jurgen Geitner.
 
 Based on a tutorial by Young Bakos, hence the license below:
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 */


import Foundation

class Deck {
    
    private let cards: [Flashcard]

    var randomCard: Flashcard? {
        if cards.isEmpty {
            return nil
        } else {
            return cards[Int(arc4random_uniform(UInt32(cards.count)))]
        }
    }
    
    init() {
        let cardData = [
"Centriole" : "Anchor for cytoskeleton.",
"Cell membrane (plasma membrane)" : "Support, protection, regulates what goes in and out of the cell",
"Cell wall" : "Extra layer of protection and gives structural support (only found in plant cells).",
"Chloroplast" : "Photosynthesis (only found in plant cells)",
"Cilium" : "Movement in or of external medium",
"Cytoplasm" : "Contents of the main fluid-filled space inside cells, chemical reactions happen in this jelly-like substance.",
"Cytoskeleton" : "Gives the cell shape and mechanical resistance to deformation.",
 "Endoplasmic reticulum (rough)" : "Protein production; in particular for export out of the cell",
"Endoplasmic reticulum (smooth)" : "Lipid production; Detoxification",
"Flagellum" : "Movement in external medium",
"Golgi apparatus" : "Protein modification and export",
"Lysosome" : "Protein destruction",
"Microvilli" : "Increases surface area for absorption of nutrients from surrounding medium.",
"Mitochondrion" : "Energy production",
"Nucleus" : "DNA storage and maintainance. RNA transcription",
"Nucleoid" : "DNA storage and maintainance. RNA transcription (only found in plant cells).",
"Peroxisomes" : "Lipid destruction; contains oxidative enzymes",
"Ribosome" : "Translation of RNA into proteins",
"Vacuole" : "Storage, homeostasis (found in plant and fungal cells, some protists and bacteria).",
"Vesicle" : "Material transport",
            
        ]
        cards = cardData.map { Flashcard(term: $0, definition: $1) }
    }
    
}



