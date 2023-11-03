//
//  Coordinator.swift
//  Coordinator
//
//  Created by chulyeon kim on 11/2/23.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: UINavigationController? { get set }
    var childCoordinators: [Coordinator] { get set }
    
    func start()
}

