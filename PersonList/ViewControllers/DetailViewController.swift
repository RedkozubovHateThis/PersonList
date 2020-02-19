//
//  DetailViewController.swift
//  PersonList
//
//  Created by Anton Redkozubov on 19.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var emailAdress: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        phoneNumber.text = person.phone
        emailAdress.text = person.email
    }
    
    func createUI() {
        phoneLabel.text = "Phone:"
        emailLabel.text = "Email:"
    }


}
