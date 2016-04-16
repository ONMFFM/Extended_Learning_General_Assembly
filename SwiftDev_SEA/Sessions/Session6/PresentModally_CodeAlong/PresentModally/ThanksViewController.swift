//
//  PresentModally
//
//  Created by Rudd Taylor on 2/23/15.
//  Copyright (c) 2015 GA. All rights reserved.
//

import UIKit

class ThanksViewController: UIViewController {
    override func viewDidDisappear(animated: Bool) {
        print("Phew, we finally dismissed a modal!")
    }
    
    @IBAction func didTapDismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
