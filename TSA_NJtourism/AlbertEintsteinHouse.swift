//
//  AlbertEintsteinHouse.swift
//  TSA_NJtourism
//
//  Created by Dheeraj Kumar on 3/27/24.
//

import SwiftUI

struct AlbertEintsteinHouse: View {
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let imgs = ["Albert Einstein's House", "Albert Einstein's House2", "Albert Einstein's House3", "Albert Einstein's House4", "Albert Einstein's House5"]
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
    AlbertEintsteinHouse()
}
