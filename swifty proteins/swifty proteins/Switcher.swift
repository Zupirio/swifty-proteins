//
//  Switcher.swift
//  swifty proteins
//
//  Created by Asahel RANGARIRA on 2019/01/23.
//  Copyright © 2019 Asahel RANGARIRA. All rights reserved.
//

import Foundation
import UIKit

class Switcher {
	static func updateRootVC() {
		let status = UserDefaults.standard.bool(forKey: "status")
		var rootVC : UIViewController?
		
		print(status)
		
		if (status == true) {
			rootVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginvc") as! LoginViewController
		}
		
		let appDelegate = UIApplication.shared.delegate as! AppDelegate
		appDelegate.window?.rootViewController = rootVC
	
	}
	
}
