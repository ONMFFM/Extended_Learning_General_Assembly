//
//  MainTableViewController.swift
//  Todo
//
//  Created by Rudd Taylor on 1/21/15.
//  Copyright (c) 2015 GA. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    var todos = [
        Todo(name: "groceries", status: TaskStatus.Incomplete, dueDate: NSDate()),
        Todo(name: "homework", status: .Incomplete, dueDate: NSDate()),
        Todo(name: "walk dog", status: .Incomplete, dueDate: NSDate()),
        Todo(name: "teach class", status: .Incomplete, dueDate: NSDate()),
        Todo(name: "clean fridge", status: .Complete, dueDate: NSDate()),
        Todo(name: "fight evil", status: .Incomplete, dueDate: NSDate())
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if let destination = segue.destinationViewController as? ModalViewController {
//            destination.todoViewController = self
//        }
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) 
        
        var currentTodo: Todo = todos[indexPath.row]
        
        // cell should look like:
        // "taskName: taskStatus"
        cell.textLabel?.text = currentTodo.taskName
        
        if (currentTodo.taskStatus == .Complete) {
            cell.backgroundColor = UIColor.redColor()
        } else {
            cell.backgroundColor = UIColor.whiteColor()
        }
        
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPathThatILove: NSIndexPath) {
        let cell = self.tableView(tableView, cellForRowAtIndexPath: indexPathThatILove)
        cell.backgroundColor = UIColor.blueColor()
        
        let selectedTodo = todos[indexPathThatILove.row]
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
        let destination = segue.destinationViewController as! TodoDetailViewController
        
        if let indexPath = self.tableView.indexPathForSelectedRow {
            destination.selectedTodo = todos[indexPath.row]
        }
        
    }

}
