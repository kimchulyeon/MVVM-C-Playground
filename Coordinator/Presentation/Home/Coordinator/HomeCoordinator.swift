//
//  HomeCoordinator.swift
//  Coordinator
//
//  Created by chulyeon kim on 11/2/23.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: UINavigationController?
    var childCoordinators: [Coordinator] = []

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeViewModel = HomeViewModel()
        let homeVC = HomeViewController(viewModel: homeViewModel)
        homeVC.coordinator = self
        self.navigationController?.pushViewController(homeVC, animated: false)
    }
    
    func moveToNext() {
        
    }
    
    
}
