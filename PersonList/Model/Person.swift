//
//  Person.swift
//  PersonList
//
//  Created by Anton Redkozubov on 19.02.2020.
//  Copyright © 2020 Anton Redkozubov. All rights reserved.
//

struct Person {
    let name: String
    let surName: String
    let phone: String
    let email: String
    
    var personInfo: String {
        "\(name) \(surName)"
    }
}


extension Person {
    static func getPersonInfo() -> [Person] {
        var personName = [
            "Anton",
            "Ivan",
            "Petr",
            "Tim",
            "John",
            "Nicola",
            "Carl",
            "Ted",
            "Stiven",
            "Aaron"
        ]
        var personSurname = ["Ivanov", "Petrov", "Sidorov",
                             "Dow", "Smith", "Murphy", "Williams",
                             "Butler", "Pennyworth", "Isaacson"]
        var personPhone = ["111", "222", "333", "444", "555",
        "666", "777", "888", "999", "1010"]
        var personEmail = [
            "aaa@a.com",
            "bbb@b.com",
            "ccc@c.com",
            "sadas@sadfasf.ro",
            "cxvreg@rwerasd.ro",
            "wdfsd@sdfsdf.ro",
            "awrd@sadfasf.ro",
            "cv.sdwe@sadfasf.ro",
            "zxcw@gmail.com",
            "sarbtyh@wefagts.ro"
        ]
        personName.shuffle()
        personSurname.shuffle()
        personPhone.shuffle()
        personEmail.shuffle()
        return [
            Person(name: personName[0], surName: personSurname[0], phone: personPhone[0], email: personEmail[0]),
            Person(name: personName[1], surName: personSurname[1], phone: personPhone[1], email: personEmail[1]),
            Person(name: personName[2], surName: personSurname[2], phone: personPhone[2], email: personEmail[2]),
            Person(name: personName[3], surName: personSurname[3], phone: personPhone[3], email: personEmail[3]),
            Person(name: personName[4], surName: personSurname[4], phone: personPhone[4], email: personEmail[4]),
            Person(name: personName[5], surName: personSurname[5], phone: personPhone[5], email: personEmail[5]),
            Person(name: personName[6], surName: personSurname[6], phone: personPhone[6], email: personEmail[6]),
            Person(name: personName[7], surName: personSurname[7], phone: personPhone[7], email: personEmail[7]),
            Person(name: personName[8], surName: personSurname[8], phone: personPhone[8], email: personEmail[8]),
            Person(name: personName[9], surName: personSurname[9], phone: personPhone[9], email: personEmail[9])
        ]
    }
}
