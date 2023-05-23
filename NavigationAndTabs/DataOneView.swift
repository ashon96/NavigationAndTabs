//
//  DataOneView.swift
//  NavigationAndTabs
//
//  Created by Andrew Shon on 5/23/23.
//

import SwiftUI

struct DataOneView: View {
    let data: DataOne
    
    var body: some View {
        NavigationLink(value: data.detail) {
            VStack {
                Text(data.title)
                    .font(.title)
                Text(data.description)
                    .font(.caption)
                Spacer()
            }
        }
    }
}

struct DataOneView_Previews: PreviewProvider {
    static var previews: some View {
        DataOneView(data: DataOne.mocks[0])
    }
}
