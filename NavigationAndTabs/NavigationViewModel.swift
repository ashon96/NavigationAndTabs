//
//  NavigationViewModel.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import Foundation

class NavigationViewModel: ObservableObject {
    @Published var selectedTab: NavTab = .flowOne
    @Published var flowTwo: [FlowTwoNavDestination] = []
}

enum NavTab {
    case flowOne
    case flowTwo
}

struct DataOne: Identifiable, Hashable {
    var id = UUID()
    var title: String
    var description: String
    var detail: DataOneDetail
    
    static let mocks: [DataOne] = [.init(title: "first", description: "sdfsd", detail: DataOneDetail.mocks[0]),
                                  .init(title: "second", description: "sfsdfsdfd", detail: DataOneDetail.mocks[1]),
                                  .init(title: "third", description: "last description", detail: DataOneDetail.mocks[2])]
}

struct DataOneDetail: Hashable {
    var description: String
    
    static let mocks: [DataOneDetail] = [.init(description: "detail description 1"),
                                         .init(description: "detail description 2"),
                                         .init(description: "detail description 3"),]
}














enum FlowTwoNavDestination: Hashable {
    case dataTwo(DataTwo)
    case detail(DataTwoDetail)
}


struct DataTwo: Identifiable, Hashable {
    var id = UUID()
    var systemName: String
    var description: String
    var detail: DataTwoDetail
    
    static let mocks: [DataTwo] = [.init(systemName: "figure.baseball", description: "baseball description", detail: DataTwoDetail.mocks[0]),
                                   .init(systemName: "figure.bowling", description: "bowling description", detail: DataTwoDetail.mocks[1]),
                                   .init(systemName: "figure.cooldown", description: "cooldown description", detail: DataTwoDetail.mocks[1])]
}

struct DataTwoDetail: Hashable {
    var anotherSystemName: String

    static let mocks: [DataTwoDetail] = [.init(anotherSystemName: "figure.curling"),
                                         .init(anotherSystemName: "figure.climbing"),
                                         .init(anotherSystemName: "figure.basketball")]
}
