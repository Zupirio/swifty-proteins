////
////  touchAuthentication.swift
////  swifty proteins
////
////  Created by Asahel RANGARIRA on 2019/01/23.
////  Copyright © 2019 Asahel RANGARIRA. All rights reserved.
////
//
//import Foundation
//import LocalAuthentication
//
////func authenticateUser() {
////	let context = LAContext()
////	var error: NSError?
////
////	if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
////		let reason = "Identify yourself!"
////
////		context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) {
////			[unowned self] success, authenticationError in
////
////			DispatchQueue.main.async {
////				if success {
////					self.runSecretCode()
////				} else {
////					let ac = UIAlertController(title: "Authentication failed", message: "Sorry!", preferredStyle: .alert)
////					ac.addAction(UIAlertAction(title: "OK", style: .default))
////					self.present(ac, animated: true)
////				}
////			}
////		}
////	} else {
////		let ac = UIAlertController(title: "Touch ID not available", message: "Your device is not configured for Touch ID.", preferredStyle: .alert)
////		ac.addAction(UIAlertAction(title: "OK", style: .default))
////		present(ac, animated: true)
////	}
////}
//
//
//fileprivate func authenticateUserUsingTouchId() {
//	let context = LAContext()
//	if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthentication, error: nil) {
//		self.evaulateTocuhIdAuthenticity(context: context)
//	}
//}
//
//fileprivate func saveAccountDetailsToKeychain(account: String, password: String) {
//	guard account.isEmpty, password.isEmpty else { return }
//	UserDefaults.standard.set(account, forKey: "lastAccessedUserName")
//	let passwordItem = KeychainPasswordItem(service: KeychainConfiguration.serviceName, account: account, accessGroup: KeychainConfiguration.accessGroup)
//	do {
//		try passwordItem.savePassword(password)
//	} catch {
//		print("Error saving password")
//	}
//}
//
//func viewDidAppear(_ animated: Bool) {
//	viewDidAppear(animated)
//	authenticateUserUsingTouchId()
//}
//
//
//
//func evaulateTocuhIdAuthenticity(context: LAContext) {
//	guard let lastAccessedUserName = UserDefaults.standard.object(forKey: "lastAccessedUserName") as? String else { return }
//	context.evaluatePolicy(LAPolicy.deviceOwnerAuthentication, localizedReason: lastAccessedUserName) { (authSuccessful, authError) in
//		if authSuccessful {
//			
//		} else {
//			if let error = authError as? LAError {
//				showError(error: error)
//			}
//		}
//	}
//}
//
//func showError(error: LAError) {
//	var message: String = ""
//	switch error.code {
//	case LAError.authenticationFailed:
//		message = "Authentication was not successful because the user failed to provide valid credentials. Please enter password to login."
//		break
//	case LAError.userCancel:
//		message = "Authentication was canceled by the user"
//		break
//	case LAError.userFallback:
//		message = "Authentication was canceled because the user tapped the fallback button"
//		break
//	case LAError.touchIDNotEnrolled:
//		message = "Authentication could not start because Touch ID has no enrolled fingers."
//		break
//	case LAError.passcodeNotSet:
//		message = "Passcode is not set on the device."
//		break
//	case LAError.systemCancel:
//		message = "Authentication was canceled by system"
//		break
//	default:
//		message = error.localizedDescription
//		break
//	}
//	self.showPopupWithMessage(message)
//}
//
//if authSuccessful {             self.loadPasswordFromKeychainAndAuthenticateUser(lastAccessedUserName)
//}
//
//fileprivate func loadPasswordFromKeychainAndAuthenticateUser(_ account: String) {
//	guard !account.isEmpty else { return }
//	let passwordItem = KeychainPasswordItem(service:   KeychainConfiguration.serviceName, account: account, accessGroup: KeychainConfiguration.accessGroup)
//	do {
//		let storedPassword = try passwordItem.readPassword()
//		authenticateUser(storedPassword)
//	} catch KeychainPasswordItem.KeychainError.noPassword {
//		print("No saved password")
//	} catch {
//		print("Unhandled error")
//	}
//}
