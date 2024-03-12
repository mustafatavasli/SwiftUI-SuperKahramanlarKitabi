//
//  SuperKahramanDetayView.swift
//  SuperKahramanlarKitabi
//
//  Created by Mustafa TAVASLI on 12.03.2024.
//

import SwiftUI

struct SuperKahramanDetayView: View {
    var secilenSuperKahraman : SuperKahraman
    var body: some View {
        VStack {
            MapView(coordinate: secilenSuperKahraman.koordinatLokasyonu)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)
            OzelGorselView(image: Image(secilenSuperKahraman.gorselIsmi))
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                .offset(y: UIScreen.main.bounds.height * -0.15)
            
            VStack {
                Text(secilenSuperKahraman.isim)
                    .font(.largeTitle)
                    .foregroundStyle(.blue)
                    .fontWeight(.heavy)
                Text(secilenSuperKahraman.gercekIsmi)
                    .font(.title)
                    .foregroundStyle(.orange)
                    .fontWeight(.bold)
                HStack {
                    Text(secilenSuperKahraman.meslek)
                    Text(secilenSuperKahraman.dogumYeri)
                }
            }
            .offset(y: UIScreen.main.bounds.height * -0.05)
            Spacer()
        }
    }
}

#Preview {
    SuperKahramanDetayView(secilenSuperKahraman: spiderman)
}
