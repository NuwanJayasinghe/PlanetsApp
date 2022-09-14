//
//  ContentView.swift
//  PlanetsApp
//
//  Created by Nuwan Jayasinghe on 2022-09-14.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    LazyVStack {
                        if let rsults = viewModel.planetResult.results {
                            ForEach(rsults, id: \.self) { value in
                                NavigationLink(destination: PlanetDetailView(planet: value)) {
                                    PlanetCardView(planet: value)
                                }
                                .foregroundColor(.black)
                            }
                        } else {
                            Spacer()
                            Text("Loading ...")
                                .fontWeight(.medium)
                        }
                    }
                }
                .navigationTitle("Planets")
            }
        }
        .onAppear {
            viewModel.getHomeData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
