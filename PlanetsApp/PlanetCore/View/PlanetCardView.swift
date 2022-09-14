//
//  PlanetCardView.swift
//  PlanetsApp
//
//  Created by Nuwan Jayasinghe on 2022-09-14.
//

import Foundation
import SwiftUI

struct PlanetCardView: View {
    let planet: PlanetModel
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    AsyncImage(url: URL(string: "https://picsum.photos/200")) {image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: { ProgressView().progressViewStyle(.circular) }
                }
                HStack(alignment: .top) {
                    Text("Name : ")
                        .fontWeight(.bold)
                    Text(planet.name ?? "")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                }
                HStack(alignment: .top) {
                    Text("Climate : ")
                        .fontWeight(.bold)
                    Text(planet.climate ?? "")
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                }
                VStack {
                    Spacer()
                    Line()
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .frame(height: 1)
                    Spacer()
                }
            }
        }.padding([.leading, .trailing])
    }
}

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}
