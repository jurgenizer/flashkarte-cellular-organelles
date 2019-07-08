//
//  DefinitionController.swift
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

import UIKit

class DefinitionController: UIViewController {

    @IBOutlet weak var definition: UITextView!
    var flashcard: Flashcard?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let card = flashcard {
            definition.text = card.definition
        }
        
        //add a light version of background pattern
        if let patternImage = UIImage(named: "Pattern-light") {
            view.backgroundColor = UIColor(patternImage: patternImage)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let searchController = segue.destination as? SearchController {
            searchController.flashcard = flashcard
        }
    }
    
}
