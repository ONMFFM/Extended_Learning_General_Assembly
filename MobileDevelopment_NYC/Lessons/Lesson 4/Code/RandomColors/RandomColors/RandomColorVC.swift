import UIKit

class RandomColorVC : UIViewController {

    @IBOutlet weak var top: UIView!
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var bottom: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getRandomFloat() -> CGFloat {
        let randomFloat = CGFloat(arc4random_uniform(100))/100.0
        return randomFloat
    }
    
    func getRandomColor() -> UIColor {
        return UIColor(red: getRandomFloat(), green: getRandomFloat(), blue: getRandomFloat(), alpha: 1.0)
    }

    @IBAction func buttonClicked(sender: AnyObject) {
        top.backgroundColor = getRandomColor()
        middle.backgroundColor = getRandomColor()
        bottom.backgroundColor = getRandomColor()
    }

}

