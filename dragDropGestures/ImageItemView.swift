//
//  FruitItemView.swift
//  dragDropGestures
//
//  Created by Infoshop on 06/06/24.
//

import SwiftUI

struct ImageItemView: View {
    
    var img: String
    
    var body: some View {
        HStack {
            Image(img)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .cornerRadius(20)
        .frame(width: UIScreen.main.bounds.width / 2.5 )
    }
}


struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        ImageItemView(img: "1709125468_85577")
    }
}
