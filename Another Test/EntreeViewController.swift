//
//  EntreesViewController.swift
//  Another Test
//
//  Created by Sai Grr on 4/13/20.
//  Copyright © 2020 Veldteck. All rights reserved.
//

import UIKit
import Firebase

class EntreeViewController: UIViewController {
    
//    @IBOutlet var tableView: UITableView!
    let db = Firestore.firestore()
    
    var restaurantName = String()
    
    var names = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("HEY" + restaurantName)
//        db.collection("Menus").getDocuments() { (querySnapshot, err) in
//            if let err = err {
//                print ("Error getting documents: \(err)")
//            } else {
//                for document in querySnapshot!.documents {
//                    self.names.append(document.documentID)
//                    print("\(document.documentID) => \(document.data())")
//                }
//            }
//            self.tableView.reloadData()
//        }
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//
//        self.modalPresentationStyle = .fullScreen
//    }
}
