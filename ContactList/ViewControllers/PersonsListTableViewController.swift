//
//  ViewController.swift
//  ContactList
//
//  Created by Nikolai Grachev on 24.10.2023.
//

import UIKit



final class PersonsListTableViewController: UITableViewController {
    
    var personsList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "Details" {
            guard let detailsVC = segue.destination as? DetailsViewController else { return }
            detailsVC.personInfo = sender as? Person
        }
    }
}

extension PersonsListTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Persons", for: indexPath)
        let person = personsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.name) \(person.surname)"
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let person = personsList[indexPath.row]
        performSegue(withIdentifier: "Details", sender: person)
    }
}
