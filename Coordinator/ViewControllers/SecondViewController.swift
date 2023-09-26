//
//  SecondViewController.swift
//  Coordinator
//
//  Created by Pooyan J on 7/4/1402 AP.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var labelText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = labelText
    }
}
