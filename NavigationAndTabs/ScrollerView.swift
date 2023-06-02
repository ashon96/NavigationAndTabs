//
//  ScrollerView.swift
//  alabaster-jar-ios
//
//  Created by Andrew Shon on 6/1/23.
//

import SwiftUI

private struct ScrollerView: ViewModifier {
    @EnvironmentObject var navigationViewModel: NavigationViewModel

    let listItemID: String?
    var tappedTwice: Binding<Bool>
    
    private func scrollToTheTop(from tappedTwiceValue: Bool, with proxy: ScrollViewProxy) {
        if tappedTwiceValue && listItemID != nil {
            withAnimation {
                print("do we get here")
                proxy.scrollTo(listItemID, anchor: .top)
            }
        }
        tappedTwice.wrappedValue = false
    }
    
    func body(content: Content) -> some View {
        ScrollViewReader { proxy in
            content
                .onChange(of: tappedTwice.wrappedValue, perform: { newValue in
                    scrollToTheTop(from: newValue, with: proxy)
                })
        }
    }
}

extension View {
    func supportScrollToTop(for listItemID: String?, from tappedTwice: Binding<Bool>) -> some View {
        modifier(ScrollerView(listItemID: listItemID, tappedTwice: tappedTwice))
    }
}

