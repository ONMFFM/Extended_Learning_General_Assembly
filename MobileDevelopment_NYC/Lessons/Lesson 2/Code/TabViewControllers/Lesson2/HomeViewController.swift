import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var nameInputField: UITextField!
    
    
    @IBOutlet weak var nameOutputView: UITextView!
    
    
    @IBAction func sayHello(sender: AnyObject) {
        nameOutputView.text = "Hello " + nameInputField.text!
    }
    
}

