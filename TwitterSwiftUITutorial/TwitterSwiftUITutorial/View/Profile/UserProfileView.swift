//
//  UserProfileView.swift
//  TwitterSwiftUITutorial
//
//  Created by KRITSSEAN on 2021/02/15.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                
                FilterButtonView()
            }
            
            .navigationTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
