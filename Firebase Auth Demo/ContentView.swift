//
//  ContentView.swift
//  Firebase Auth Demo
//
//  Created by Sunghee Bang on 2022-03-15.
//

import SwiftUI
import FirebaseEmailAuthUI

struct ContentView: View {
    
    @Binding var loggedIn: Bool
    
    var body: some View {
        VStack {
            Text("Welcome")
            Button {
                try! FUIAuth.defaultAuthUI()?.signOut()
                loggedIn = false
            } label: {
                Text("Sign Out")
                
            }
        }
    }
}
