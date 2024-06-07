//
//  ContentView.swift
//  dragDropGestures
//
//  Created by Infoshop on 06/06/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var draggedFruit: String?
    @State private var imgs: [String] = ["1708003264_73749","1666633725_33314","1717676556_04228","1709125468_85577","1713985989_14141","1711119030_32066"]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false, content: {
            LazyVGrid(columns: columns, spacing: 20 ){
                ForEach(imgs, id: \.self) { img in
                    ImageItemView(img: img)
                        .onDrag({
                            self.draggedFruit = img
                            return NSItemProvider()
                        })
                        .onDrop(of: [.text], delegate:
                                    DropViewDelegate(destinationItem: img, fruits: $imgs, draggedItem: $draggedFruit)
                        )
                }
            }
            .padding(.vertical, 80)
        })
        .ignoresSafeArea()
        .background(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
