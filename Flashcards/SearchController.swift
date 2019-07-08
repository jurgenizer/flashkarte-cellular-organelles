//
//  SearchController.swift
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
import UIKit

class SearchController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var flashcard: Flashcard?
    let baseSearchURL = "https://google.com/search?q=wikipedia"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let card = flashcard,
            let escapedURLString = searchURLString(baseSearchURL, term: card.term),
            let url = URL(string: escapedURLString) {
                webView.loadRequest(URLRequest(url: url))
        }
        
        
    }
    
    fileprivate func searchURLString(_ base: String, term: String) -> String? {
        return "\(baseSearchURL) \(term)"
            .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //function to start activity indicator
    func webViewDidStartLoad(_ webView: UIWebView) {
        
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.whiteLarge
        
        activityIndicator.color = UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 128.00/255.0, alpha: 1.0)
        
        activityIndicator.isHidden = false
      
        activityIndicator.startAnimating()
        
    }

  //function to stop activity indicator
   func webViewDidFinishLoad(_ webView: UIWebView) {
    
        activityIndicator.stopAnimating()
        activityIndicator.hidesWhenStopped = true
    
   }
    
    
    
}
