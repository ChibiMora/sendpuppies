//
//  SendHugs.swift
//  ProjectIncognito
//
//  Created by Crystal Mora on 6/21/17.
//  Copyright © 2017 Crystal Mora. All rights reserved.
//

import UIKit

class SendPuppyViewController : UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var puppyViewer: UIImageView!
    
    @IBOutlet weak var nameDisplayer: UILabel!
    
    @IBAction func puppiesSender(_ sender: Any) {
//        displayShareSheet(shareContent: <#T##String#>)
      
    }
    
    @IBAction func nameChangingButton(_ sender: Any) {
        performSegue(withIdentifier: "wrongNameSegue", sender: (Any).self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let submittedName = UserDefaults.standard.string(forKey: Constants.UserDefaults.nameKey)!
       nameDisplayer.text = "\(submittedName) sent you a puppy!"
    
        // if let submittedName = UserDefaults.standard.string(forKey: Constants.UserDefaults.nameKey) {
        // NameDisplayer.text = "\(submittedName) sent you a puppy!" }
    }
    
    func displayShareSheet(shareContent:String) {
        let activityViewController = UIActivityViewController(activityItems: [shareContent as NSString], applicationActivities: nil)
        present(activityViewController, animated: true, completion: {})
    }
}
