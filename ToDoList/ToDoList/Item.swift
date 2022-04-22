//
//  Item.swift
//  ToDoList
//
//  Created by Zhandos Baimurat on 22.04.2022.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    var todo: String
}
