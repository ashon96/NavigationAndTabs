//
//  DataTwoDetailView.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import SwiftUI

struct DataTwoDetailView: View {
    let data: DataTwoDetail
    
    var body: some View {
        Image(systemName: data.anotherSystemName)
    }
}

struct DataTwoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DataTwoDetailView(data: DataTwoDetail.mocks[0])
    }
}
