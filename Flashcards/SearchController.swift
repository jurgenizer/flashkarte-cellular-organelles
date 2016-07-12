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
            escapedURLString = searchURLString(baseSearchURL, term: card.term),
            url = NSURL(string: escapedURLString) {
                webView.loadRequest(NSURLRequest(URL: url))
        }
        
        
    }
    
    private func searchURLString(base: String, term: String) -> String? {
        return "\(baseSearchURL) \(term)"
            .stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //function to start activity indicator
    func webViewDidStartLoad(webView: UIWebView) {
        
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge
        
        activityIndicator.color = UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 128.00/255.0, alpha: 1.0)
        
        activityIndicator.hidden = false
      
        activityIndicator.startAnimating()
        
    }

  //function to stop activity indicator
   func webViewDidFinishLoad(webView: UIWebView) {
    
        activityIndicator.stopAnimating()
        activityIndicator.hidesWhenStopped = true
    
   }
    
    
    
}
