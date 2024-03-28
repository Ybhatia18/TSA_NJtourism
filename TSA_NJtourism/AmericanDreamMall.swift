//
//  AmericanDreamMall.swift
//  TSA_NJtourism
//
//  Created by Dheeraj Kumar on 3/27/24.
//

import SwiftUI

struct AmericanDreamMall: View {
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let imgs = ["American Dream Mall", "American Dream Mall2", "American Dream Mall Waterpark", "American Dream Mall Waterpark2", "American Dream Mall3"]
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
    AmericanDreamMall()
}
