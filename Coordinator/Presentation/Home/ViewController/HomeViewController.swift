//
//  HomeViewController.swift
//  Coordinator
//
//  Created by chulyeon kim on 11/2/23.
//

import UIKit
import RxSwift
import RxCocoa

class HomeViewController: UIViewController {
    //MARK: - properties
    let viewModel: HomeViewModel!
    weak var coordinator: HomeCoordinator?
    
    var disposeBag = DisposeBag()
    
    private lazy var nextButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("GO NEXT!!!", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemBlue
        return btn
    }()
    
    //MARK: - lifecycle
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        setLayout()
        
        nextButton.rx.tap
            .subscribe { [weak self] _ in
                guard let weakSelf = self else { return }
                weakSelf.coordinator?.moveToNext()
            }
            .disposed(by: disposeBag)
            
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = .systemGreen
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
//        coordinator?.didFinishHome()
    }
 
    
    private func setLayout() {
        view.addSubview(nextButton)
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    
}
