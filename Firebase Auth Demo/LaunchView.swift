//
//  LaunchView.swift
//  Firebase Auth Demo
//
//  Created by Sunghee Bang on 2022-03-15.
//

import SwiftUI
import FirebaseEmailAuthUI

struct LaunchView: View {
    @State var loggedIn = false // this should technically be in a viewmodel
    @State var loginFormShowing = false
    
    var body: some View {
        
        // Check the logged in property and show the appropriate view
        if !loggedIn {
            
            // Show logged out view
            Button {
                // Show the login form
                loginFormShowing = true
            } label: {
                Text("Sign In or Create New Account")
            }
            .sheet(isPresented: $loginFormShowing, onDismiss: checkLogin) {
                LoginForm()
            }
            .onAppear{
                checkLogin()
            }
        } else {
            // Show logged in view
            ContentView(loggedIn: $loggedIn)
        }
    }
    
    func checkLogin() {
        loggedIn = FUIAuth.defaultAuthUI()?.auth?.currentUser == nil ? false:true
    }
    
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView()
    }
}
