//
//  NextViewController.swift
//  Coordinator
//
//  Created by chulyeon kim on 11/2/23.
//

import UIKit

class NextViewController: UIViewController {
    let viewModel: NextViewModel!
    var coordinator: Coordinator?
    
    init(viewModel: NextViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
    }
}
