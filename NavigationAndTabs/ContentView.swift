//
//  ContentView.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var navViewModel = NavigationViewModel()
    
    private func customSelectedTabBinding() -> Binding<NavTab> {
        Binding {
            navViewModel.selectedTab
        } set: { selectedTab in
            switch selectedTab {
            case .flowTwo:
                withAnimation {
                    navViewModel.flowTwo = []
                }
            default:
                print("fall through")
            }
            
            navViewModel.selectedTab = selectedTab
        }

    }
    
    var body: some View {
        TabView(selection: $navViewModel.selectedTab) {
            FlowOnePage()
                .tabItem {
                    Image(systemName: "paperplane")
                }
                .tag(NavTab.flowOne)
            FlowTwoPage()
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
