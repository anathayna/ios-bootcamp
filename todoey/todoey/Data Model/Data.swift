//
//  Data.swift
//  todoey
//
//  Created by Ana Thayna Franca on 18/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation
import RealmSwift

class Data: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var age: Int = 0
}
