//
//  WeatherManager.swift
//  clima
//
//  Created by Ana Thayna Franca on 12/05/20.
//  Copyright © 2020 Ana Thayna Franca. All rights reserved.
//

//API Key d712dea299c988a43cbe05fdc55ff6ce
//http://api.openweathermap.org/data/2.5/weather?q=brazil&appid=d712dea299c988a43cbe05fdc55ff6ce
//http://api.openweathermap.org/data/2.5/weather?appid=d712dea299c988a43cbe05fdc55ff6ce&q=brazil&units=metric

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=d712dea299c988a43cbe05fdc55ff6ce&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
