//
//  PasswordYoKeychain.swift
//  swifty proteins
//
//  Created by Asahel RANGARIRA on 2019/01/23.
//  Copyright © 2019 Asahel RANGARIRA. All rights reserved.
//

import Foundation
import LocalAuthentication

fileprivate func authenticateUserUsingTouchId() {
	let context = LAContext()
	if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthentication, error: nil) {
		self.evaulateTocuhIdAuthenticity(context: context)
	}
}
