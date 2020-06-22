//
//  Category.swift
//  todoey
//
//  Created by Ana Thayna Franca on 22/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
