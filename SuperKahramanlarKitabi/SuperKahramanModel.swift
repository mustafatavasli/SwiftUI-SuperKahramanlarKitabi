//
//  SuperKahramanModel.swift
//  SuperKahramanlarKitabi
//
//  Created by Mustafa TAVASLI on 11.03.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct SuperKahraman : Identifiable {
    var id = UUID()
    var isim : String
    var gercekIsmi : String
    var gorselIsmi : String
    var dogumYeri : String
    var meslek : String
    var koordinat : Koordinat
    
    var koordinatLokasyonu : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

// Harita Kullanımı
struct Koordinat {
    var latitude : Double
    var longitude : Double
}

let batman = SuperKahraman(isim: "Batman", gercekIsmi: "Bruce Wayne", gorselIsmi: "batman", dogumYeri: "Gotham", meslek: "İş Adamı", koordinat: Koordinat(latitude: 41.8713679, longitude: -87.7669902))

let superman = SuperKahraman(isim: "Superman", gercekIsmi: "Clark Kent", gorselIsmi: "superman", dogumYeri: "Kansas", meslek: "Gazeteci", koordinat: Koordinat(latitude: 39.0865207, longitude: -94.7089592))

let spiderman = SuperKahraman(isim: "Spider Man", gercekIsmi: "Peter Parker", gorselIsmi: "spiderman", dogumYeri: "New York", meslek: "Fotoğrafçı", koordinat: Koordinat(latitude: 40.7160119, longitude: -74.0524729))

let ironman = SuperKahraman(isim: "Iron Man", gercekIsmi: "Tony Stark", gorselIsmi: "ironman", dogumYeri: "Los Angeles", meslek: "İş Adamı", koordinat: Koordinat(latitude: 33.8003309, longitude: -118.2261494))

let superKahramanlar = [batman, superman, spiderman, ironman]


