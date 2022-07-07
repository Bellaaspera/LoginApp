//
//  User.swift
//  LoginApp
//
//  Created by Светлана Сенаторова on 05.07.2022.
//

import UIKit

struct User {
    
    var userName: String
    var password: String

    static func getRegisterData() -> (String, String) {
        let userName = "User"
        let password = "Password"
        return (userName, password)
    }
}

struct Person {
    
    var registrationData: (String, String) = User.getRegisterData()
    var name: String
    var surName: String
    var occupation: String

    var description: String { getDescription() }
    
    static func getPersonData() -> Person {
        Person(
            registrationData: ("User", "Password"),
            name: "Светлана",
            surName: "Сенаторова",
            occupation: "продюсер на телевидении"
        )
    }
    
    private func getDescription() -> String {
        return ("Меня зовут \(name) \(surName). \nЯ - \(occupation). \nЯ уже давно хочу изменить род деятельности, и сейчас учусь кодить на Swift. \nВозможно, у меня это не очень получается, но мне очень хочется надеяться, \nчто однажды я получу работу в крупной IT-компании и буду грести бабло лопатой!🖕")
    }
    
}


