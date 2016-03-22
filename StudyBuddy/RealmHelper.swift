//
//  RealmHelper.swift
//  StudyBuddy
//
//  Created by Mike Kane on 3/14/16.
//  Copyright © 2016 Mike Kane. All rights reserved.
//

import UIKit
import RealmSwift

class RealmHelper: NSObject {
    
    func saveUser(user: User) {
        let realm = try! Realm()
        try! realm.write{
            realm.add(user)
        }
    }
    
    func updateUser(oldUser: User, newUser: User) {
        let realm = try! Realm()
        try! realm.write{
            oldUser.firstName = newUser.firstName
            oldUser.lastName = newUser.lastName
            oldUser.email = newUser.email
            oldUser.major = newUser.major
            oldUser.year = newUser.year
            oldUser.bio = newUser.bio
            oldUser.interestedSubjects = newUser.interestedSubjects
            oldUser.currentClasses = newUser.currentClasses
            oldUser.classesAlreadyTaken = newUser.classesAlreadyTaken
        }
    }
    
    func deleteUser(user: User) {
        let realm = try! Realm()
        try! realm.write{
            realm.delete(user)
        }
    }
    
    func getAllUsers() -> Results<User> {
        let realm = try! Realm()
        return realm.objects(User).sorted("year", ascending: false)
    }

}