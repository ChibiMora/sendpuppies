//
//  EnterName.swift
//  ProjectIncognito
//
//  Created by Crystal Mora on 8/15/17.
//  Copyright © 2017 Crystal Mora. All rights reserved.
//



import UIKit

class EnterNameViewController : UIViewController {
    
    //declare the defaults...
    let defaults: UserDefaults = UserDefaults.standard

    @IBOutlet weak var nameTextField: UITextField!
    
    //MARK: Properties
    @IBAction func submitName(_ sender: Any) {
        guard !nameTextField.text!.isEmpty else {

            let alertController = UIAlertController(title: "Alert",
                                                message:"You haven't added your name yet!",
                                                preferredStyle: .alert)
            // The cancel button
            let firstAction = UIAlertAction(title: "OK",
                                            style: UIAlertActionStyle.cancel,
                                            handler: nil)

            alertController.addAction(firstAction)
            self.present(alertController, animated: true, completion: nil)
            return
        }


        defaults.set( nameTextField.text, forKey: Constants.UserDefaults.nameKey)

        performSegue(withIdentifier: "sendPuppySegue", sender: (Any).self)
    }

}




