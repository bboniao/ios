import UIKit

class Animation: UIViewController {
	@IBAction func startOver() {

	    // Create a Core Animation transition. This will crossfade from what is
	    // currently on the screen to the changes that you're making below.
	    let transition = CATransition()
	    transition.type = kCATransitionFade
	    transition.duration = 1
	    transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
	    
	    // This makes the animation go.
	    view.layer.addAnimation(transition, forKey: nil)
	  }
}