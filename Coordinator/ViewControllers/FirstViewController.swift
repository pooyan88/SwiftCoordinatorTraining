//
//  ViewController.swift
//  Coordinator
//
//  Created by Pooyan J on 7/4/1402 AP.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button.addAction(UIAction(handler: { _ in
            self.coordinator?.gotoSecondViewController(labelText: "Some Text")
        }), for: .touchUpInside)
    }
}

