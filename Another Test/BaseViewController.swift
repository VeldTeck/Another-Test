//
//  BaseViewController.swift
//  Another Test
//
//  Created by Sai Grr on 4/13/20.
//  Copyright © 2020 Veldteck. All rights reserved.
//

import UIKit

class BaseViewController: UITabBarController {

    var restaurantName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension ViewController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
//        viewController.
    }
}
