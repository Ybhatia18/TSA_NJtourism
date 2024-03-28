//
//  HobokenShoreline.swift
//  TSA_NJtourism
//
//  Created by Dheeraj Kumar on 3/27/24.
//

import SwiftUI

struct HobokenShoreline: View {
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let imgs = ["Hoboken Waterfront", "Hoboken Waterfront2", "Hoboken Waterfront Tours", "Hoboken Waterfront History Mural", "Hoboken Waterfront Pier A Park"]
    var body: some View {
        VStack{
            TabView(selection: $selection) {
                ForEach(0..<5){ i in
                    Image("\(imgs[i])").resizable().ignoresSafeArea()
                }
            }.tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                .onReceive(timer, perform: {_ in
                    withAnimation{
                        selection = selection < 5 ? selection + 1 : 0
                    }
                })
        }.ignoresSafeArea()
    }
}

#Preview {
    HobokenShoreline()
}
