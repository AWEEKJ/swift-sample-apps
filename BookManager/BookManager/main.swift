//
//  main.swift
//  BookManager
//
//  Created by AWEEK.JO on  .
//  Copyright © 2016년 aweek-jo. All rights reserved.
//

import Foundation

var book1 = Book()
book1.name = "Hamlet"
book1.genre = "Tragedy"
book1.author = "Shakespears"

var book2 = Book()
book2.name = "Harry Potter"
book2.genre = "Fantasy"
book2.author = "J.K.Rowling"

var book3 = Book()
book3.name = "The Alchemist"
book3.genre = "Fiction"
book3.author = "Paulo Coelho"

var bookManager = BookManager()
bookManager.addBook(book1)
bookManager.addBook(book2)
bookManager.addBook(book3)

print(bookManager.showAllBook())
print(bookManager.countBook())

var findBook = bookManager.findBook("Hamlet")

if findBook != nil {
    print("\(findBook!) has found.\n")
} else {
    print("There is no book.\n")
}

bookManager.removeBook("Hamlet")
print(bookManager.showAllBook())

