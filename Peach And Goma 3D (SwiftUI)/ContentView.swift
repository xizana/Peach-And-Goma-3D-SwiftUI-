//
//  ContentView.swift
//  Peach And Goma 3D (SwiftUI)
//
//  Created by Lasha Khizanishvili on 06.02.25.
//

import SwiftUI
import SplineRuntime

struct ContentView: View {
    var body: some View {
        VStack {
            PeachandgomaContentView()
                .ignoresSafeArea()
        }
    }
}




struct PeachandgomaContentView: View {
    var body: some View {
        
        // fetching from cloud
        let url = URL(string: "https://build.spline.design/H-lklKX6san-viny1bEm/scene.splineswift")!

        // fetching from local
        // let url = Bundle.main.url(forResource: "scene", withExtension: "splineswift")!

        SplineView(sceneFileURL: url).ignoresSafeArea(.all)
    }
}


#Preview {
    ContentView()
}
