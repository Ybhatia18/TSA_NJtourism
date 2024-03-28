//
//  AtlanticCity.swift
//  TSA_NJtourism
//
//  Created by Dheeraj Kumar on 3/27/24.
//

import SwiftUI

struct AtlanticCity: View {
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let imgs = ["Atlantic City", "Atlantic City2", "Atlantic City3", "Atlantic City4", "Atlantic City5", "Atlantic City Boardwalk Hall"]
    var body: some View {
        VStack{
            TabView(selection: $selection) {
                ForEach(0..<6){ i in
                    Image("\(imgs[i])").resizable().ignoresSafeArea()
                }
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .onReceive(timer, perform: {_ in
                    withAnimation{
                        selection = selection < 6 ? selection + 1 : 0
                    }
                })
        }.ignoresSafeArea()
    }
}

#Preview {
    AtlanticCity()
}
