//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Cat Ball on 22/1/23.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in (!showFavoritesOnly || landmark.isFavorite) }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) { Text("Show only favorites") }

                ForEach(filteredLandmarks) {
                    landmark in NavigationLink { LandmarkDetail(landmark: landmark) }
                    label: { LandmarkRow(landmark: landmark) }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
