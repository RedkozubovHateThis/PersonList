//
//  SectionsViewController.swift
//  PersonList
//
//  Created by Anton Redkozubov on 20.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

import UIKit

class SectionsViewController: UITableViewController {
    
    var personInfo = Person.getPersonInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return personInfo.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personInfo[section]
        return person.personInfo
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCurrent", for: indexPath)
        let person = personInfo[indexPath.row]
        
        if indexPath.row % 2 == 0 {
            cell.textLabel?.text = person.email
        } else {
            cell.textLabel?.text = person.phone
        }
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
}
