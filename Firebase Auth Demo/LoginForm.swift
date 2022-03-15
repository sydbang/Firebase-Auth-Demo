//
//  LoginForm.swift
//  Firebase Auth Demo
//
//  Created by Sunghee Bang on 2022-03-15.
//

import Foundation
import SwiftUI
import FirebaseEmailAuthUI

struct LoginForm: UIViewControllerRepresentable {
    
    
    func makeUIViewController(context: Context) -> UINavigationController {
        let authUI = FUIAuth.defaultAuthUI()
        
        guard authUI != nil else {
            return UINavigationController()
        }
        // array of auth provider and asign it to the authUI.provider
        let providers = [FUIEmailAuth()]
        authUI!.providers = providers
        
        return authUI!.authViewController()
    }
    
    func updateUIViewController(_ uiViewController: UINavigationController, context: Context) {
        
    }
}
