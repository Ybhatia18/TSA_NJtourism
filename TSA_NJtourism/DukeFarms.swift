//
//  DukeFarms.swift
//  TSA_NJtourism
//
//  Created by Dheeraj Kumar on 3/27/24.
//

import SwiftUI

struct DukeFarms: View {
    public let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0
    let imgs = ["Duke Farms", "Duke Farms2", "Duke Farms3", "Duke Farms4", "Duke Gardens"]
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
    DukeFarms()
}
