import UIKit
class Alert {
	@IBAction func showAlert() {
        //preferredStyle: UIAlertControllerStyle -- ActionSheet/Alert
        let alert = UIAlertController(title: "Title Test"
        	, message: "Message Test", preferredStyle: .ActionSheet)
        //style: UIAlertActionStyle -- Default/Cancel/Destructive
        let action = UIAlertAction(title: "Action Test", style: .Destructive, handler: nil)
        alert.addAction(action);
        presentViewController(alert, animated: true, completion: nil)
    }
}