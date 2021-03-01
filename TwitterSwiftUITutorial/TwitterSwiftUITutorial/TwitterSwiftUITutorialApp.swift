//
//  TwitterSwiftUITutorialApp.swift
//  TwitterSwiftUITutorial
//
//  Created by KRITSSEAN on 2021/01/11.
//

import SwiftUI
import Firebase

@main
struct TwitterSwiftUITutorialApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthViewModel())
        }
    }
}
