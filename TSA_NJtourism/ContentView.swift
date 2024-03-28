//
//  ContentView.swift
//  TSA_NJtourism
//
//  Created by Yaksh Bhatia on 3/13/24.
/*
 Spots to integrate:
 > Duke Farms
 > Columbus Park
 > Hoboken Shoreline
 > Washington Rock
 > Albert Einstein's House
 > American Dream Mall
 > Six Flags
 > Atlantic City
 > Supercharged Entertainment
 > Liberty Science Center
 > Trenton Capital Building
 */



import SwiftUI
import MapKit
struct ContentView: View {
    var body: some View {
        Map()
        
        NavigationView {
            VStack {
                NavigationLink(destination: LibertyScienceCenter()){
                    Text("Liberty Science Center")
                    Image("Liberty Science Center")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 40)
                }
            }
        }
        /*Button(action: {
            // Open page of Location
            
        }, label: {
            Image("Liberty Science Center")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 40)
        })*/
    }
}

#Preview {
    ContentView()
}
