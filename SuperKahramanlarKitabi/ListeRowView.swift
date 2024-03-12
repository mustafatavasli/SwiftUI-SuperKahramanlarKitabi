//
//  ListeRowView.swift
//  SuperKahramanlarKitabi
//
//  Created by Mustafa TAVASLI on 12.03.2024.
//

import SwiftUI

struct ListeRowView: View {
    var superKahraman : SuperKahraman
    var body: some View {
        HStack {
            Image(superKahraman.gorselIsmi)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .leading)
            Spacer()
            VStack {
                Text(superKahraman.isim)
                    .font(.title)
                    .fontWeight(.bold)
                Text(superKahraman.gercekIsmi)
            }
            Spacer()
        }
    }
}

#Preview {
    ListeRowView(superKahraman: batman)
}
