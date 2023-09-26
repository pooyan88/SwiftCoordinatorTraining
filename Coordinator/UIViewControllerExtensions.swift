//
//  UIViewControllerExtensions.swift
//  Coordinator
//
//  Created by Pooyan J on 7/4/1402 AP.
//

import UIKit

enum StoryboardName: String {
    case main = "Main"
}

extension UIViewController {

    static func instantiate<T: UIViewController>(appStoryboard: StoryboardName) -> T {
        let storyboard = UIStoryboard(name: appStoryboard.rawValue, bundle: nil)
        let identifier = String(describing: self)
        return storyboard.instantiateViewController(withIdentifier: identifier) as! T
    }
}
