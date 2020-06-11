//
//  Item.swift
//  todoey
//
//  Created by Ana Thayna Franca on 10/06/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import UIKit

//Encodable, Decodable =

class Item: Codable {
    var title: String = ""
    var done: Bool = false
}
