//
//  PlanetDetailView.swift
//  PlanetsApp
//
//  Created by Nuwan Jayasinghe on 2022-09-14.
//

import SwiftUI

struct PlanetDetailView: View {
    
    var planet: PlanetModel?
    
    init(planet: PlanetModel?) {
        self.planet = planet
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                Text("Name : ")
                    .fontWeight(.bold)
                Text(planet?.name ?? "")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
            }
            HStack(alignment: .top) {
                Text("Orbital Period : ")
                    .fontWeight(.bold)
                Text(planet?.orbital_period ?? "")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
            }
            HStack(alignment: .top) {
                Text("Gravity : ")
                    .fontWeight(.bold)
                Text(planet?.gravity ?? "")
                    .fontWeight(.medium)
                    .multilineTextAlignment(.leading)
            }
            Spacer()
        }.navigationTitle(planet?.name ?? "")
    }
}

struct PlanetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetDetailView(planet: nil)
    }
}
