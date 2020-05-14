//
//  WeatherData.swift
//  clima
//
//  Created by Ana Thayna Franca on 14/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
}
