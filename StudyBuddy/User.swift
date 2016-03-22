//
//  User.swift
//  StudyBuddy
//
//  Created by Mike Kane on 3/14/16.
//  Copyright © 2016 Mike Kane. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
    
    dynamic var firstName: String!
    dynamic var lastName: String!
    dynamic var email: String!
    dynamic var major: String!
    dynamic var year: String!
    dynamic var bio: String!
    var interestedSubjects = List<AreaOfStudy>()
    var currentClasses = List<Class>()
    var classesAlreadyTaken = List<Class>()
    
    
    
}
