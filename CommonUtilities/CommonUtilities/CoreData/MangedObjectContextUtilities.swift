//
//  CoreDataUtilities.swift
//  Megabooth
//
//  Created by Swipe Studio on 09/03/2018.
//  Copyright © 2018 Swipe Studio. All rights reserved.
//

import Foundation
import CoreData


//MARK:  - Insertion

extension NSManagedObjectContext {
    
    func insertObject<A: NSManagedObject>() -> A {
        guard let object = NSEntityDescription.insertNewObject(forEntityName: A.entityName, into: self) as? A else {
            fatalError("Incorrect object type")
        }
        return object
    }
}


//MARK: - Save

extension NSManagedObjectContext {
    
    public func saveOrRollBack() -> Bool {
        do {
            try save()
            return true
        } catch {
            print(error)
            rollback()
            return false
        }
    }
    
    public func performChanges(block: @escaping () -> ()) {
        perform {
            block()
            _ = self.saveOrRollBack()
        }
    }
}

