//
//  OzelGorselView.swift
//  SuperKahramanlarKitabi
//
//  Created by Mustafa TAVASLI on 12.03.2024.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 15)
    }
}

#Preview {
    OzelGorselView(image: Image("batman"))
}
