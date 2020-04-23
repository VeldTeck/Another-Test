//
//  MenuPageViewController.swift
//  Another Test
//
//  Created by Sai Grr on 4/13/20.
//  Copyright © 2020 Veldteck. All rights reserved.
//

import UIKit

class MenuPageViewController: UICollectionViewController {
    
//    lazy var viewControllerList: [UIViewController] = {
//        return [
//            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EntreeVC") as! EntreeViewController,
//            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SideVC") as! SideViewController,
//            UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DrinkVC") as! DrinkViewController
//        ]
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

//        self.dataSource = self
//        self.delegate = self
//
//        setViewControllers([viewControllerList[1]], direction: .forward, animated: true, completion: nil)
    }
    
//    required init?(coder: NSCoder) {
//        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
//    }
    
//    func presentationCount(for pageViewController: UIPageViewController) -> Int {
//        return viewControllerList.count
//    }
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//
//        let currentIndex: Int = viewControllerList.firstIndex(of: viewController) ?? 0
//
//        if currentIndex <= 0 {
//            return nil
//        }
//
//        return viewControllerList[currentIndex]
//    }
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//
//        let currentIndex: Int = viewControllerList.firstIndex(of: viewController) ?? 0
//
//        if currentIndex >= (viewControllerList.count - 1) {
//            return nil
//        }
//
//        return viewControllerList[currentIndex]
//    }
}
