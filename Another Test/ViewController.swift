//
//  ViewController.swift
//  Another Test
//
//  Created by Sai Grr on 4/9/20.
//  Copyright © 2020 Veldteck. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    let db = Firestore.firestore()
    
    var names = [String]()
    var selectedRestaurant: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        db.collection("Menus")
            .getDocuments() { (querySnapshot, err) in
            if let err = err {
                print ("Error getting documents: \(err)")
            } else {
                var restaurantNames = Set<String>()
                for document in querySnapshot!.documents {
                    restaurantNames.insert(document["Restaurant"] as! String)
                }
                self.names.append(contentsOf: restaurantNames)
                self.tableView.reloadData()
            }
        }
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.selectedRestaurant = (self.tableView.cellForRow(at: indexPath)?.textLabel?.text)!
        performSegue(withIdentifier: "restaurantMenu", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "restaurantMenu") {
            let viewController = segue.destination as! UIViewController
            let vc = viewController as! EntreeViewController
            
//            vc.restaurantName = "HEY"
//            let vc = viewController.customizableViewControllers?.first
//        let vc = viewController.viewControllers.first as! EntreeViewController
//            viewController.restaurantName = selectedRestaurant
            
        }
    }
}
