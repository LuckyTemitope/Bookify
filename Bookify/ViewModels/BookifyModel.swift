//
//  BookifyViewModel.swift
//  Bookify
//
//  Created by Lucky Osunbiyi on 2021-06-27.
//

import Foundation

class BookifyModel: ObservableObject {
    
    @Published var books = [Bookify]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    
}
