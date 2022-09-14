//
//  HomeViewModel.swift
//  PlanetsApp
//
//  Created by Nuwan Jayasinghe on 2022-09-14.
//

import Foundation
import Combine
import SwiftUI

class HomeViewModel: ObservableObject {

    private var cancellables = Set<AnyCancellable>()
    @Published var planetResult = PlanetResultModel()
    
    func getHomeData() {
        NetworkManager.shared.getData(endpoint: .planets, type: PlanetResultModel.self)
            .sink { completion in
                switch completion {
                case .failure(let err):
                    print("Error is \(err.localizedDescription)")
                case .finished:
                    print("Finished")
                }
            }
            receiveValue: { [weak self] receiveData in
                self?.planetResult = receiveData
            }
            .store(in: &cancellables)
        }
}
