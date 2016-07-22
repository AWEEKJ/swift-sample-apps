//
//  BookManager.swift
//  BookManager
//
//  Created by AWEEK.JO on 2016. 7. 22..
//  Copyright © 2016년 aweek-jo. All rights reserved.
//

import Foundation

class BookManager {
    var bookList = [Book]()
    
    func addBook(bookObject:Book) {
        bookList += [bookObject]
    }
    
    func showAllBook()->String {
        var strTmp = ""
        for bookTmp in bookList {
            strTmp += "Name: \(bookTmp.name)\n"
            strTmp += "Genre: \(bookTmp.genre)\n"
            strTmp += "Author: \(bookTmp.author)\n\n"
        }
        return strTmp
    }
    
    func countBook()->Int {
        return bookList.count
    }
    
    func findBook(name:String)->String? {
        var strTmp = ""
        for bookTmp in bookList {
            if bookTmp.name == name {
                strTmp += "Name: \(bookTmp.name)\n"
                strTmp += "Genre: \(bookTmp.genre)\n"
                strTmp += "Author: \(bookTmp.author)\n\n"
                return strTmp
            }
        }
        return nil
    }

    func removeBook(name:String) {
        for bookTmp in bookList {
            if (bookTmp.name == name) {
                let index = (bookList as NSArray).indexOfObject(bookTmp)
                bookList.removeAtIndex(index)
            }
        }
    }
}