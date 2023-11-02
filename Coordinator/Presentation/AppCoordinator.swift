//
//  AppCoordinator.swift
//  Coordinator
//
//  Created by chulyeon kim on 11/2/23.
//

import UIKit

class AppCoordinator: Coordinator {
    var window: UIWindow?
    var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = []

    init(navigationController: UINavigationController, window: UIWindow?) {
        self.navigationController = navigationController
        self.window = window
    }
    
    func start() {
        let homeCoordinator = HomeCoordinator(navigationController: self.navigationController)
        childCoordinators.append(homeCoordinator)
        homeCoordinator.start()
        
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }
}
