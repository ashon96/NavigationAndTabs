//
//  DataOneDetailView.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import SwiftUI

struct DataOneDetailView: View {
    let data: DataOneDetail
    
    var body: some View {
        Text(data.description)
    }
}

struct DataOneDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DataOneDetailView(data: DataOneDetail.mocks[0])
    }
}
