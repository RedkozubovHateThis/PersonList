//
//  Person.swift
//  PersonList
//
//  Created by Anton Redkozubov on 19.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

struct Person {
    var name: String
    var surName: String
    var phone: String
    var email: String
    
    var personInfo: String {
        "\(name) \(surName)"
    }
}


extension Person {
    static func getPersonInfo() -> [Person] {
        return [
            Person(name: "Tim", surName: "Dow", phone: "324234234", email: "sadas@sadfasf.ro"),
            Person(name: "John", surName: "Smith", phone: "123", email: "wdfsd@sdfsdf.ro"),
            Person(name: "Nicola", surName: "Murphy", phone: "2341", email: "saasddas@qqaasd.ro"),
            Person(name: "Carl", surName: "Williams", phone: "3251234124", email: "cxvreg@rwerasd.ro"),
            Person(name: "Ted", surName: "Butler", phone: "668568", email: "sarbtyh@wefagts.ro"),
            Person(name: "Stiven", surName: "Pennyworth", phone: "2348793", email: "dgyjyt@.zx.ro"),
            Person(name: "Aaron", surName: "Isaacson", phone: "0912832", email: "zxcw@gmail.com"),
            Person(name: "Alian", surName: "Robertson", phone: "+3242300234", email: "dsfwerwer@sadfasf.ro"),
            Person(name: "Bruce", surName: "Black", phone: "32493249", email: "cv.sdwe@sadfasf.ro"),
            Person(name: "Sharon", surName: "Jankin", phone: "123040234", email: "awrd@sadfasf.ro")
        ]
    }
}
