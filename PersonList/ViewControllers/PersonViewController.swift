//
//  PersonViewController.swift
//  PersonList
//
//  Created by Anton Redkozubov on 19.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

import UIKit

class PersonViewController: UITableViewController {

    var personInfo = Person.getPersonInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personInfo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        let person = personInfo[indexPath.row]
        cell.textLabel?.text = person.personInfo
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = personInfo[indexPath.row]
        }
    }

}
