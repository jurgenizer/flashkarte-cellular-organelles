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


import UIKit

class SearchController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    
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

    //functions for UIActivityIndicatorView activity
    
    func webViewDidStartLoad(webView: UIWebView) {
        
        activity.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.WhiteLarge
        activity.color = UIColor(red: 255.0/255.0, green: 0.0/255.0, blue: 128.00/255.0, alpha: 1.0)
        activity.hidden = false
        activity.startAnimating()
        
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        
        activity.stopAnimating()
        activity.hidesWhenStopped = true
        
    }

    
    
    
    
}
