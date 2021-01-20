//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by KRITSSEAN on 2021/01/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
//            Color.blue.ignoresSafeArea()
                        
            VStack {
//                Spacer()
                
                Text("Hello, how are you doing?")
                    .padding()
                
                Text("I'm doing just fine")
                    .padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
