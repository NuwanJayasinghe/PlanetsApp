//
//  PlanetResultModel.swift
//  PlanetsApp
//
//  Created by Nuwan Jayasinghe on 2022-09-14.
//

import Foundation

struct PlanetResultModel: Decodable, Hashable {
    var results: [PlanetModel]?
}

struct PlanetModel: Decodable, Hashable {
    var name:String?
    var climate:String?
    var orbital_period:String?
    var gravity:String?
}
