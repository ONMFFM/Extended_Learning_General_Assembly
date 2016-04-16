//
//  ViewController.swift
//  Weather
//
//  Created by Rudd Taylor on 3/2/15.
//  Copyright (c) 2015 ga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        
//        Weather.retrieveWeather { (weather) -> Void in
//            self.label.text = weather.friendlyWeather
//        }
        func completion(weather: Weather) {
            self.label.text = weather.friendlyWeather as? String
        }
        Weather.retrieveWeather(completion)
        
        var array = [1]
        let valueInArray = 1
        var arrayWithNamedVar = [valueInArray]
        
    }
}

