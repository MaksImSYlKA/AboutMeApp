//
//  Model.swift
//  AboutMeApp
//
//  Created by Максим Сылка on 28.01.2024.
//

import Foundation

struct User{
let login: String
let password: String
let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}


struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let job: Company
    
    var fullName: String {
        "\(name) \(name)"
    }
    static func getPerson() -> Person{
        Person(
            name: "",
            surname: "",
            photo: "",
            bio: "",
            job: Company.getCompany()
        )
    }
}

struct Company {
    let title: String
    let jobTitle: Jobtitle
    let department: Department
    
    static func getCompany() -> Company {
        Company(
            title: "Apple",
            jobTitle: .managment ,
            department: .ceo
        )
    }
}
enum Department: String {
    case ceo = "CEO"
    case cto = "CTO"
}
enum Jobtitle: String {
    case managment = "Managment"
    case marketing = "Marketing"
}
