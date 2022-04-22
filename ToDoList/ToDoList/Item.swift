//
//  Item.swift
//  ToDoList
//
//  Created by Zhandos Baimurat on 22.04.2022.
//

import Foundation

struct Item: Identifiable, Encodable, Decodable {
    let id = UUID()
    var todo: String
}
