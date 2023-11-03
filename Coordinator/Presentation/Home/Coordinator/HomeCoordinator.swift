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
    weak var parentCoordinator: AppCoordinator?

    init(navigationController: UINavigationController?) {
        self.navigationController = navigationController
    }

    func start() {
        print("HOME VC + HOME COORD START")
        let homeViewModel = HomeViewModel()
        let homeVC = HomeViewController(viewModel: homeViewModel)
        homeVC.coordinator = self
        self.navigationController?.pushViewController(homeVC, animated: false)
    }

    func moveToNext() {
        print("move to next :::: ")
        let nextCoordinator = NextCoordinator(navigationController: self.navigationController)
        childCoordinators.append(nextCoordinator)
        nextCoordinator.parentCoordinator = self
        nextCoordinator.start()
    }

    func didFinish(_ childCoordinator: Coordinator) {
        print("❌ NEXT 제거 :::: ")
        self.childCoordinators = self.childCoordinators.filter { $0 !== childCoordinator }
    }

}
