//
//  Firebase_Auth_DemoApp.swift
//  Firebase Auth Demo
//
//  Created by Sunghee Bang on 2022-03-15.
//

import SwiftUI
import Firebase

@main
struct Firebase_Auth_DemoApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LaunchView()
        }
    }
}
