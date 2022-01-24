//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Cat Ball on 22/1/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarks) {
                landmark in
                    NavigationLink {
                        LandmarkDetail()
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
            }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
