//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by chulyeon kim on 11/2/23.
//

import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = []

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeCoordinator = HomeCoordinator(navigationController: self.navigationController)
        childCoordinators.append(homeCoordinator)
        homeCoordinator.parentCoordinator = self
        homeCoordinator.start()
    }
}
