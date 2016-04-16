import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    @IBAction func changeColorRequested(sender: AnyObject) {
        textView.backgroundColor = UIColor.yellowColor()
        textView.text = "great class!"
    }
}

