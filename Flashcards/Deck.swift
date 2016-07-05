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
"Centriole" : "FUNCTION: anchor for cytoskeleton.",
"Cell membrane (plasma membrane)" : "FUNCTION: Support, protection, regulates what goes in and out of the cell",
"Cell wall" : "FUNCTION: extra layer of protection and gives structural support (only found in plant cells).",
"Chloroplast" : "FUNCTION: Photosynthesis (only found in plant cells)",
"Cilium" : "FUNCTION: Movement in or of external medium",
"Cytoplasm" : "FUNCTION: Contents of the main fluid-filled space inside cells, chemical reactions happen in this jelly-like substance.",
"Cytoskeleton" : "FUNCTION: gives the cell shape and mechanical resistance to deformation.",
 "Endoplasmic reticulum (rough)" : "FUNCTION: Protein production; in particular for export out of the cell",
"Endoplasmic reticulum (smooth)" : "FUNCTION: Lipid production; Detoxification",
"Flagellum" : "FUNCTION: Movement in external medium",
"Golgi apparatus" : "FUNCTION: Protein modification and export",
"Lysosome" : "FUNCTION: Protein destruction",
"Microvilli" : "FUNCTION:increases surface area for absorption of nutrients from surrounding medium.",
"Mitochondrion" : "FUNCTION: Energy production",
"Nucleus" : "FUNCTION: DNA storage and maintainance. RNA transcription",
"Nucleoid" : "FUNCTION: DNA storage and maintainance. RNA transcription (only found in plant cells).",
"Peroxisomes" : "FUNCTION: Lipid destruction; contains oxidative enzymes",
"Ribosome" : "FUNCTION: Translation of RNA into proteins",
"Vacuole" : "FUNCTION: Storage, homeostasis (found in plant and fungal cells, some protists and bacteria).",
"Vesicle" : "FUNCTION: Material transport",
            
        ]
        cards = cardData.map { Flashcard(term: $0, definition: $1) }
    }
    
}



