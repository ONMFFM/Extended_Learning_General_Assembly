//
//  TodoDetailViewController.swift
//  Todo
//
//  Created by Owen Pierce on 1/7/16.
//  Copyright © 2016 GA. All rights reserved.
//

import UIKit

class TodoDetailViewController: UIViewController {

    var selectedTodo: Todo!
    
    @IBOutlet var nameOfTodo: UITextField!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var statusSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameOfTodo.text = selectedTodo.taskName
        datePicker.date = selectedTodo.taskDueDate
        statusSwitch.on = selectedTodo.taskStatus == .Complete
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        selectedTodo.taskName = nameOfTodo.text!
        selectedTodo.taskDueDate = datePicker.date
        selectedTodo.taskStatus = statusSwitch.on ? .Complete : .Incomplete
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        
//        
//        
//    }

}
