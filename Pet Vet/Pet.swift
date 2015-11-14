//
//  Pet.swift
//  Pet Vet
//
//  Created by Christopher Burgess on 11/13/15.
//  Copyright © 2015 Christopher Burgess. All rights reserved.
//

import Foundation
import CoreData

@objc (Pet)

class Pet: NSManagedObject {
     
     @NSManaged var name: String
     @NSManaged var sex: String
     @NSManaged var species: String
     @NSManaged var breed: String
     @NSManaged var color: String
     @NSManaged var microchipID: String
     @NSManaged var registrationID: String
     @NSManaged var adoptDate: NSDate
     @NSManaged var birthdate: NSDate
     @NSManaged var notes: String
     
     struct Keys {
          static let Name = "name"
          static let Sex = "sex"
          static let Species = "species"
          static let Breed = "breed"
          static let Color = "color"
          static let MicrochipID = "microchipID"
          static let RegistrationID = "registrationID"
          static let AdoptDate = "adoptDate"
          static let Birthdate = "birthdate"
          static let Notes = "notes"
     }
     
     override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext?) {
          super.init(entity: entity, insertIntoManagedObjectContext: context)
     }
     
     init(dictionary: [String:AnyObject], context: NSManagedObjectContext) {
          let entity = NSEntityDescription.entityForName("Pet", inManagedObjectContext: context)!
          super.init(entity: entity, insertIntoManagedObjectContext: context)
          
          
          name = dictionary[Keys.Name] as! String
          sex = dictionary[Keys.Sex] as! String
          species = dictionary[Keys.Species] as! String
          birthdate = dictionary[Keys.Birthdate] as! NSDate
          color = dictionary[Keys.Color] as! String
          
          if dictionary[Keys.Breed] != nil {
               breed = dictionary[Keys.Breed] as! String
          }
          
          if dictionary[Keys.MicrochipID] != nil {
               microchipID = dictionary[Keys.MicrochipID] as! String
          }
          
          if dictionary[Keys.RegistrationID] != nil {
               registrationID = dictionary[Keys.RegistrationID] as! String
          }
          
          if dictionary[Keys.AdoptDate] != nil {
               adoptDate = dictionary[Keys.AdoptDate] as! NSDate
          }
          
          //if dictionary[Keys.Notes] != nil {
          //     notes = dictionary[Keys.Notes] as! String
          //}
     }

}