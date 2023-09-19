import SwiftUI
struct Songs: Identifiable {
    var id= UUID()
    var name: String
    var artist: String
    var time: String
}

var songs = [
    Songs(name: "Never gonna give you up", artist: "Rick Astley", time: "3:32")
]