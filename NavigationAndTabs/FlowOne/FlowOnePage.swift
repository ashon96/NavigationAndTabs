//
//  FlowOnePage.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import SwiftUI

struct FlowOnePage: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Page one")
                List {
                    ForEach(DataOne.mocks) { item in
                        NavigationLink(value: item) {
                            Text(item.title)
                        }
                    }
                }
            }
            .navigationDestination(for: DataOne.self) {
                DataOneView(data: $0)
            }
            .navigationDestination(for: DataOneDetail.self) {
                DataOneDetailView(data: $0)
            }
        }
    }
}

struct FlowOnePage_Previews: PreviewProvider {
    static var previews: some View {
        FlowOnePage()
    }
}
