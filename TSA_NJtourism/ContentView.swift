//
//  ContentView.swift
//  TSA_NJtourism
//
//  Created by Yaksh Bhatia on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "sun.max.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("NJ TSA")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
