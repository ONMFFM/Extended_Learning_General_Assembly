//
//  Todo.swift
//  Todo
//
//  Created by Owen Pierce on 1/7/16.
//  Copyright © 2016 GA. All rights reserved.
//

import UIKit

enum TaskStatus: String {
    case Incomplete = "Incomplete"
    case Complete = "Complete"
}

class Todo: NSObject {
    var taskName: String
    var taskStatus: TaskStatus
    var taskDueDate: NSDate
    
    override init() {
        taskName = "Unknown"
        taskStatus = .Incomplete
        taskDueDate = NSDate()
    }
    
    init(name: String, status: TaskStatus, dueDate: NSDate) {
        taskName = name
        taskStatus = status
        taskDueDate = dueDate
    }
}
