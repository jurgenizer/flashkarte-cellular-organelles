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
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let searchController = segue.destinationViewController as? SearchController {
            searchController.flashcard = flashcard
        }
    }
    
}