import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var redLightView: UIView!
    @IBOutlet private var yellowLightView: UIView!
    @IBOutlet private var greenLightView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50

    }


}

