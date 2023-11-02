//
//  NextCoordinator.swift
//  Coordinator
//
//  Created by chulyeon kim on 11/2/23.
//

import UIKit

class NextCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    var childCoordinators: [Coordinator] = []
    
    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
        let nextViewModel = NextViewModel()
        let nextVC = NextViewController(viewModel: nextViewModel)
        nextVC.coordinator = self
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    
    
}
