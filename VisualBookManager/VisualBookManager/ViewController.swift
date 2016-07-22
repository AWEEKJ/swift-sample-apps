//
//  ViewController.swift
//  VisualBookManager
//
//  Created by AWEEK.JO on 2016. 7. 22..
//  Copyright © 2016년 aweek-jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myBook = BookManager()
    
    // Interface Builder
    @IBOutlet var outputTextView:UITextView!
    
    @IBOutlet var titleTextField:UITextField!
    @IBOutlet var genreTextField:UITextField!
    @IBOutlet var authorTextField:UITextField!
    
    @IBOutlet var countLabel:UILabel!
    
    @IBAction func showAllBookAction(sender:AnyObject) {
        outputTextView.text = myBook.showAllBook()
    }
    
    @IBAction func registerBookAction(sender:AnyObject) {
        let bookTmp = Book()
        bookTmp.title = titleTextField.text!
        bookTmp.genre = genreTextField.text!
        bookTmp.author = authorTextField.text!
        
        myBook.addBook(bookTmp)
        outputTextView.text = "\(titleTextField.text!) is registerd!\n"
        
        countLabel.text = "\(myBook.countBook())"
    }
    
    @IBAction func searchBookAction(sender:AnyObject) {
        let resultBook = myBook.findBook(titleTextField.text!)
        if resultBook != nil {
            outputTextView.text = resultBook
        } else {
            outputTextView.text = "There is no match.\n"
        }
    }
    
    @IBAction func removeBookAction(sender:AnyObject) {
        let deleteBook = myBook.removeBook(titleTextField.text!)
        if deleteBook == true {
            outputTextView.text = "Success.\n"
        } else {
            outputTextView.text = "There is no match.\n"
        }
        countLabel.text = "\(myBook.countBook())"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let book1 = Book()
        book1.title = "Hamlet"
        book1.genre = "Tragedy"
        book1.author = "Shakespears"
        
        let book2 = Book()
        book2.title = "Harry Potter"
        book2.genre = "Fantasy"
        book2.author = "J.K.Rowling"
        
        let book3 = Book()
        book3.title = "The Alchemist"
        book3.genre = "Fiction"
        book3.author = "Paulo Coelho"
        
        myBook.addBook(book1)
        myBook.addBook(book2)
        myBook.addBook(book3)
        
        countLabel.text = "\(myBook.countBook())"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

