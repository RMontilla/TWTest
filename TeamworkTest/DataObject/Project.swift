//
//  Project.swift
//  TeamworkTest
//
//  Created by Rafael Montilla on 5/27/18.
//  Copyright © 2018 Teamwork. All rights reserved.
//

import Foundation

class Project {
    let kNameKey = "name"
    let kStatusKey = "status"
    
    var name : String
    var status : String
    
    init(dictionary: NSDictionary) {
        print("dict \(dictionary)")
        self.name = (dictionary.value(forKey: kNameKey) as? String)!
        self.status = (dictionary.value(forKey: kStatusKey) as? String)!
    }
}
