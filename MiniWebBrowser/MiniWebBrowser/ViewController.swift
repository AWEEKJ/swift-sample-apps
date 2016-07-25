//
//  ViewController.swift
//  MiniWebBrowser
//
//  Created by AWEEK.JO on 2016. 7. 25..
//  Copyright © 2016년 aweek-jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate {

    @IBOutlet var bookmarkSegmentControl: UISegmentedControl!
    @IBOutlet var urlTextField: UITextField!
    @IBOutlet var mainWebView: UIWebView!
    @IBOutlet var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    @IBAction func bookmarkAction(sender: AnyObject) {
        
        let bookmarkUrl = bookmarkSegmentControl.titleForSegmentAtIndex(bookmarkSegmentControl.selectedSegmentIndex)
        let urlString = "http://www.\(bookmarkUrl!).com"
        mainWebView.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
        urlTextField.text = urlString
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        
        if !urlString.hasPrefix("http://") {
            urlString = "http://\(urlTextField.text!)"
        }
        
        mainWebView.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
        textField.resignFirstResponder()
        return true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let bookmarkUrl = bookmarkSegmentControl.titleForSegmentAtIndex(bookmarkSegmentControl.selectedSegmentIndex)
        let urlString = "http://www.\(bookmarkUrl!).com"
        mainWebView.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
        urlTextField.text = urlString
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        spinningActivityIndicatorView.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        spinningActivityIndicatorView.stopAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

