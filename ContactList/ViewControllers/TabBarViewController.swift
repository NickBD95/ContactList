//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Nikolai Grachev on 24.10.2023.
//

import UIKit

class TabBarViewController: UITabBarController {

     var personsList = Person.getPersonInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
         transferData()
        
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        for viewController in viewControllers {
            if let personsVC = viewController as? PersonsListTableViewController {
                personsVC.personsList = personsList
            } else if let contactsVC = viewController as? ContactsTableViewController {
                contactsVC.personsList = personsList
            }
        }
        
    }

}

