//
//  DataTwoView.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import SwiftUI

struct DataTwoView: View {
    let data: DataTwo
    
    var body: some View {
        NavigationLink(value: FlowTwoNavDestination.detail(data.detail)) {
            VStack {
                Image(systemName: data.systemName)
                Text(data.description)
            }
        }
    }
}

struct DataTwoView_Previews: PreviewProvider {
    static var previews: some View {
        DataTwoView(data: DataTwo.mocks[0])
    }
}
