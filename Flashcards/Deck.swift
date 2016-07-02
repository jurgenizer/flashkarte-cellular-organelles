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
            "Centrosome" : "an associated pair of cylindrical shaped protein structures (centrioles) that organize microtubules and aid in forming the mitotic spindle during cell division in eukaryotes.",
            "Cell membrane (plasma membrane)" : "the part of the cell which separates the cells from the outside environment and protects the cell, as well as regulating what goes in and out of the cell.",
            "Cell wall" : "extra layer of protection and gives structural support (only found in plant cells).",
            "Chloroplast" : "key organelle for photosynthesis (only found in plant cells).",
            "Cilium" : "motile structure of eukaryotes having a cytoskeleton, the axoneme.",
            "Cytoplasm" : "contents of the main fluid-filled space inside cells, chemical reactions also happen in this jelly-like substance.",
            "Cytoskeleton" : "protein filaments inside cells (microfilaments, microtubules, and intermediate filaments).",
            "Endoplasmic reticulum (rough)" : "major site of membrane protein synthesis.",
            "Endoplasmic reticulum (smooth)" : "major site of lipid synthesis.",
            "Endosomes" : "vesicles that traffic membrane and intra and extra cellular contents for recycling or degradation by lysosomes.",
            "Flagellum" : "motile structure of bacteria, archaea and eukaryotes.",
            "Golgi apparatus" : "site of protein glycosylation in the endomembrane system.",
            "Lipid bilayer" : "fundamental organizational structure of cell membranes.",
            "Lysosome" : "acidic organelle that breaks down cellular waste products and debris into simple compounds (only found in animal cells).",
            "Microvilli" : "increases surface area for absorption of nutrients from surrounding medium.",
            "Mitochondrion" : "major energy-producing organelle by releasing energy in the form of ATP.",
            "Nucleus" : "contains chromosomes composed of DNA, the building block of life. Nuclear Architecture is important for dictating nuclear function.",
            "Organelle" : "term used for major subcellular structures.",
            "Peroxisomes" : "a very small organelle that uses oxygen to breakdown and detoxify long fatty acids and other molecules.",
            "Pili " : "(also called fimbria) is used for conjugation and sometimes movement.",
            "Ribosome" : "RNA and protein complex required for protein synthesis in cells.",
            "Starch grain" : "found in the cytoplasm of a typical plant cell, it stores chemical energy of the plant.",
            "Vacuole" : "contain cell sap (only found in plant cells).",
            "Vesicle" : "small membrane-bounded spheres inside cells.",
            
        ]
        cards = cardData.map { Flashcard(term: $0, definition: $1) }
    }
    
}