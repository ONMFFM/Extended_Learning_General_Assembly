
import UIKit

class TextViewController: UINavigationController {
    
    @IBOutlet weak var iceCreamButton: UITabBarItem!
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        iceCreamButton.badgeValue = nil
    }
}
