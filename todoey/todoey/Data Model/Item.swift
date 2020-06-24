//
//  Item.swift
//  todoey
//
//  Created by Ana Thayna Franca on 22/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
