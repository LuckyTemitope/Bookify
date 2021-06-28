//
//  BookifyModel.swift
//  Bookify
//
//  Created by Lucky Osunbiyi on 2021-06-27.
//

import Foundation

class Bookify: Identifiable, Decodable {
    
    var id : UUID?
    var bookName : String
    var author : String
    var bookCoverImage : String
    var readLater : Bool
    var rate : Int?
    var contents : [String]
    
}
