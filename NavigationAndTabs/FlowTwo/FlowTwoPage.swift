//
//  FlowTwoPage.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import SwiftUI

struct FlowTwoPage: View {
    @EnvironmentObject var navViewModel: NavigationViewModel
    
    var body: some View {
        NavigationStack(path: $navViewModel.flowTwo) {
            VStack {
                Text("Page two")
                List {
                    ForEach(DataTwo.mocks) { item in
                        NavigationLink(value: FlowTwoNavDestination.dataTwo(item)) {
                            Image(systemName: item.systemName)
                        }
                    }
                }
            }
            .navigationDestination(for: FlowTwoNavDestination.self) { destination in
                switch destination {
                case .dataTwo(let dataTwoItem):
                    DataTwoView(data: dataTwoItem)
                case .detail(let detailItem):
                    DataTwoDetailView(data: detailItem)
                }
            }
            //            .navigationDestination(for: DataTwo.self) { dest in
            //                NavigationLink(value: dest.detail) {
            //                    VStack {
            //                        Image(systemName: dest.systemName)
            //                        Text(dest.description)
            //                    }
            //                }
            //            }
            //            .navigationDestination(for: DataTwoDetail.self) {
            //                Image(systemName: $0.anotherSystemName)
            //            }
        }
    }
}

struct FlowTwo_Previews: PreviewProvider {
    static var previews: some View {
        FlowTwoPage()
    }
}
