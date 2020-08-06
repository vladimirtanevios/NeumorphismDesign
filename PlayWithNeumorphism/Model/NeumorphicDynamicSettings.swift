import Foundation

class NeumorphicDynamicSettings: ObservableObject {
   
    @Published var width: Double = 200
    @Published var height: Double = 200
    @Published var cornerRadius: Double = 20
    @Published var distance: Double = 11
    @Published var intensity: Double = 0.8
    @Published var blur: Double = 10
}
