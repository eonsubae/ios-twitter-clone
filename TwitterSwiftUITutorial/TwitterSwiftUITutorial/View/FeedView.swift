//
//  FeedView.swift
//  TwitterSwiftUITutorial
//
//  Created by KRITSSEAN on 2021/01/21.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingNewTweetView = false
    @ObservedObject var viewModel = FeedViewModel()

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(viewModel.tweets) { tweet in
                        TweetCell(tweet: tweet)
                    }
                }.padding()
            }
            
            Button(action: { isShowingNewTweetView.toggle() }, label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $isShowingNewTweetView) {
                NewTweetView(isPresented: $isShowingNewTweetView)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
