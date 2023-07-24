import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var redLightView: UIView!
    @IBOutlet private var yellowLightView: UIView!
    @IBOutlet private var greenLightView: UIView!
    
    @IBOutlet private var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction private func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha < 1 {
            if yellowLightView.alpha < 1 {
                greenLightView.alpha = 0.3
                redLightView.alpha = 1
            } else {
                yellowLightView.alpha = 0.3
                greenLightView.alpha = 1
            }
        } else {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        }
    }
}

