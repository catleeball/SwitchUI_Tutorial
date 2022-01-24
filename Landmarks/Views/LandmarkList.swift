//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Cat Ball on 22/1/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in LandmarkRow(landmark: landmark) }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
