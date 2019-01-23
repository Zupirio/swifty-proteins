//
//  LoginViewController.swift
//  swifty proteins
//
//  Created by Asahel RANGARIRA on 2019/01/23.
//  Copyright © 2019 Asahel RANGARIRA. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
        // Do any additional setup after loading the view.
    }
    
	@IBAction func logout(_ sender: Any) {
		UserDefaults.standard.set(false, forKey: "status")
		Switcher.updateRootVC()
	}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
