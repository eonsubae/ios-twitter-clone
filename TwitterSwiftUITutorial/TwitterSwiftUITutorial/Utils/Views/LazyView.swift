//
//  LazyView.swift
//  TwitterSwiftUITutorial
//
//  Created by KRITSSEAN on 2021/03/06.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: some View {
        build()
    }
}
