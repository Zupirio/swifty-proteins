//
//  LoginViewController.swift
//  swifty proteins
//
//  Created by Asahel RANGARIRA on 2019/01/23.
//  Copyright © 2019 Asahel RANGARIRA. All rights reserved.
//

import UIKit
import LocalAuthentication

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
        // Do any additional setup after loading the view.
    }
    
//	@IBAction func logout(_ sender: Any) {
//		UserDefaults.standard.set(false, forKey: "status")
//		Switcher.updateRootVC()
//	}
	
	@IBOutlet var successLabel: UILabel!
	
	
	@IBAction func touchIdAction(_ sender: UIButton) {
		
		print("hello there!.. You have clicked the touch ID")
		
		let myContext = LAContext()
		let myLocalizedReasonString = "Biometric Authntication testing !! "
		
		var authError: NSError?
		if #available(iOS 8.0, macOS 10.12.1, *) {
			if myContext.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &authError) {
				myContext.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: myLocalizedReasonString) { success, evaluateError in
					
					DispatchQueue.main.async {
						if success {
							// User authenticated successfully, take appropriate action
							self.successLabel.text = "Awesome!!... User authenticated successfully"
						} else {
							// User did not authenticate successfully, look at error and take appropriate action
							self.successLabel.text = "Sorry!!... User did not authenticate successfully"
						}
					}
				}
			} else {
				// Could not evaluate policy; look at authError and present an appropriate message to user
				successLabel.text = "Sorry!!.. Could not evaluate policy."
			}
		} else {
			// Fallback on earlier versions
			
			successLabel.text = "Ooops!!.. This feature is not supported."
		}
		
		
	}
}
	
	/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation*/
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }

