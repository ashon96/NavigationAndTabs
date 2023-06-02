//
//  ContentView.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var navViewModel = NavigationViewModel()
    @State private var tappedTwice = false
    @State private var listItemID: String?

    private func customSelectedTabBinding() -> Binding<NavTab> {
        Binding {
            navViewModel.selectedTab
        } set: { selectedTab in
            switch selectedTab {
            case .flowTwo:
                if navViewModel.flowTwo.isEmpty {
                    tappedTwice = true
                } else {
                    withAnimation {
                        navViewModel.flowTwo = []
                    }
                }
            default:
                print("fall through")
            }
            
            navViewModel.selectedTab = selectedTab
        }

    }
    
    var body: some View {
        TabView(selection: customSelectedTabBinding()) {
            FlowOnePage()
                .tabItem {
                    Image(systemName: "paperplane")
                }
                .tag(NavTab.flowOne)
            FlowTwoPage(listItemID: $listItemID)
                .supportScrollToTop(for: listItemID, from: $tappedTwice)
                .tabItem {
                    Image(systemName: "figure.boxing")
                }
                .tag(NavTab.flowTwo)
        }
        .environmentObject(navViewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
