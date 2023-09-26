//
//  Coordinator.swift
//  Coordinator
//
//  Created by Pooyan J on 7/4/1402 AP.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get }
    
    func startCoordinator()
}

class MainCoordinator: Coordinator {
    
    var navigationController = UINavigationController()

    func startCoordinator() {
        let initialVC: FirstViewController = FirstViewController.instantiate(appStoryboard: .main)
        initialVC.coordinator = self
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.pushViewController(initialVC, animated: false)
        
    }
    
    func gotoSecondViewController() {
        let vc: SecondViewController = SecondViewController.instantiate(appStoryboard: .main)
        navigationController.pushViewController(vc, animated: true)
    }
}
