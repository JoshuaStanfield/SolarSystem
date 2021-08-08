//
//  Planet.swift
//  SolarSystem
//
//  Created by Stanfield on 8/2/21.
//

import Foundation

class Planet {
    
    let planetName: String
    let planetImageName: String
    let planetDiameter: Int
    let planetDayLength: Float
    let maxMillionKMsFromSun: Float
    
    init(planetName: String, planetImageName: String, planetDiameter: Int, planetDayLength: Float, maxMillionKMsFromSun: Float) {
        self.planetName = planetName
        self.planetImageName = planetImageName
        self.planetDiameter = planetDiameter
        self.planetDayLength = planetDayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
    }
}//End of Class
