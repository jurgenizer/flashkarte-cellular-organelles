//
//  TermController.swift
//  FlashKarte
//
//  Created by Jurgen Geitner on 2016/01/22.
//

/*
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Jurgen Geitner.
 
 Based on a tutorial by Young Bakos, hence the license below:
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 */


import UIKit

class TermController: UIViewController {


    
    @IBOutlet weak var termButton: UIButton!
    
    
    let deck = Deck()
    var flashcard: Flashcard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //add the background pattern
        if let patternImage = UIImage(named: "Pattern") {
            view.backgroundColor = UIColor(patternImage: patternImage)
        }
        
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let flashcard = deck.randomCard {
            self.flashcard = flashcard
            termButton.setTitle(flashcard.term, for: UIControlState())
            termButton.titleLabel?.textAlignment = NSTextAlignment.center
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let definitionController = segue.destination as? DefinitionController {
            definitionController.flashcard = flashcard
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

