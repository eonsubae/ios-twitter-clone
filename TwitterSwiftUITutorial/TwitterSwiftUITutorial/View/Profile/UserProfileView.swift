//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by KRITSSEAN on 2021/02/15.
//

import SwiftUI

struct UserProfileView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView(user: user)
                    .padding()
                
                ForEach(0 ..< 5) { item in
                    TweetCell()
                        .padding()
                }
            }
            .navigationTitle("batman")
        }
    }
}
