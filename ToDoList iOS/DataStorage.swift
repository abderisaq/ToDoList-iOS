//
//  DataStorage.swift
//  ToDoList iOS
//
//  Created by TN007 on 9/14/19.
//  Copyright © 2019 Tarabi. All rights reserved.
//

import UIKit

class DataStorage: NSObject {

    static var dataStorageArray: [String] = []
    
    class func add(newToDo: String) {
        DataStorage.dataStorageArray.append(newToDo)
    }
    
    class func remove(index: Int) {
        DataStorage.dataStorageArray.remove(at: index)
    }
}
