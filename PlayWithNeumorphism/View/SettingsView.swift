import SwiftUI

struct SettingsView: View {
    
    @Binding var width: Double
    @Binding var height: Double
    @Binding var cornerRadius: Double
    @Binding var distance: Double
    @Binding var intensity: Double
    @Binding var blur: Double
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 2) {
            HStack {
                Text("Width \(Int(width))")
                    .font(.headline)
                    .foregroundColor(.gray)
                Slider(value: $width, in: 10...200, step: 10)
            }
            HStack {
                Text("Height  \(Int(height))")
                    .font(.headline)
                    .foregroundColor(.gray)
                Slider(value: $height, in: 10...200, step: 10)
            }
            HStack {
                Text("Corner \(Int(cornerRadius))")
                    .font(.headline)
                    .foregroundColor(.gray)
                Slider(value: $cornerRadius, in: 0...min(width,height)/2, step: 1)
            }
            HStack {
                Text("Distance  \(Int(distance))")
                    .font(.headline)
                    .foregroundColor(.gray)
                Slider(value: $distance, in: 1...max(width,height)/10, step: 1)
            }
            HStack {
                Text("Intensity \(intensity, specifier: "%.1f")")
                    .font(.headline)
                    .foregroundColor(.gray)
                Slider(value: $intensity, in: 0...1, step: 0.1)
            }
            HStack {
                Text("Blur  \(Int(blur))")
                    .font(.headline)
                    .foregroundColor(.gray)
                Slider(value: $blur, in: 0...distance*2, step: 1)
            }
        }
    }
}
