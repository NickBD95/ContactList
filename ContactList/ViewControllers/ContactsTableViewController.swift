//
//  ContactsTableViewController.swift
//  ContactList
//
//  Created by Nikolai Grachev on 24.10.2023.
//

import UIKit

final class ContactsTableViewController: UITableViewController {
    
    var personsList: [Person]!
}

extension ContactsTableViewController {
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        "\(personsList[section].name) \(personsList[section].surname)"

    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Contacts", for: indexPath)
        let person = personsList[indexPath.section]
        var content = cell.defaultContentConfiguration()
       
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
            
            return cell
        } else if indexPath.row == 1 {
            content.text = person.email
            content.image = UIImage(systemName: "envelope")
            cell.contentConfiguration = content
            return cell
        }
        
        return cell
    }
       
}

