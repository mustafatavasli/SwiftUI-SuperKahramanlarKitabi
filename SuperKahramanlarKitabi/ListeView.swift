//
//  ContentView.swift
//  SuperKahramanlarKitabi
//
//  Created by Mustafa TAVASLI on 11.03.2024.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {
            List(superKahramanlar) { superKahraman in
                NavigationLink(destination: SuperKahramanDetayView(secilenSuperKahraman: superKahraman),
                               label: {
                    ListeRowView(superKahraman: superKahraman)})
            }
            .navigationTitle("Super Kahraman Kitabı")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ListeView()
}
