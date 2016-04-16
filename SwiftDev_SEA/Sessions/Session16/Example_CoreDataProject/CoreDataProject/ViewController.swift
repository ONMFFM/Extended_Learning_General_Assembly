//
//  ViewController.swift
//  CoreDataProject
//
//  Created by Rudd Taylor on 9/12/15.
//  Copyright © 2015 General Assembly. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    var appDelegate = (UIApplication.sharedApplication().delegate as! AppDelegate)
    
    var animals = [Animal]()
    
    @IBOutlet var tableView: UITableView!
    let reuseIdentifer = "animalReuse"
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        
        title = "Animals"
    }
    
    override func viewWillAppear(animated: Bool) {
        reloadDatabase()
    }
    
    func reloadDatabase() {
        let fetch = NSFetchRequest(entityName: "Animal")
        if let animalsArray: [Animal] = (try? appDelegate.managedObjectContext.executeFetchRequest(fetch)) as? [Animal] {
            animals = animalsArray
        }
        
        tableView.reloadData()
    }
    
    @IBAction func addAnimal() {
        let alert =
        UIAlertView(title: "Animal Name?",
            message: "Enter an animal name",
            delegate: self,
            cancelButtonTitle: "Dismiss",
            otherButtonTitles: "Add")
        alert.alertViewStyle = UIAlertViewStyle.PlainTextInput
        alert.show()
    }
}

extension ViewController: UIAlertViewDelegate {
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        if buttonIndex == 1 {
            // add animal with name
            guard let entity =
                NSEntityDescription.entityForName("Animal",
                    inManagedObjectContext: appDelegate.managedObjectContext) else {
                        fatalError("Could not find animal description!")
            }
            
            if let animalName =
                alertView.textFieldAtIndex(0)?.text {
                let animal = Animal(entity: entity, insertIntoManagedObjectContext: appDelegate.managedObjectContext)
                animal.name = animalName
            }
            
            appDelegate.saveContext()
            reloadDatabase()
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailVC = AnimalDetailViewController()
        detailVC.selectedAnimal = animals[indexPath.row]
        navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifer) as UITableViewCell!
        
        if cell == nil {
            cell = UITableViewCell(style: .Default, reuseIdentifier: reuseIdentifer)
        }
        
        let animal = animals[indexPath.row] as Animal
        cell.textLabel?.text = animal.name
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count ?? 0
    }
}

