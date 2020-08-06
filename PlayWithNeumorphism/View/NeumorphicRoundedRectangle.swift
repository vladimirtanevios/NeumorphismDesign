import SwiftUI

struct NeumorphicRoundedRectangle: View {
    
    var settings: NeumorphicSettings
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: CGFloat(settings.cornerRadius))
                .fill(Color("background"))
                .frame(width: CGFloat(settings.width), height: CGFloat(settings.height))
                .shadow(
                    color: Color("lightShadow").opacity(settings.intensity),
                    radius: CGFloat(settings.blur), x: -CGFloat(settings.distance)/2, y: -CGFloat(settings.distance)/2)
                .shadow(
                    color: Color("darkShadow").opacity(settings.intensity),
                    radius: CGFloat(settings.blur), x: CGFloat(settings.distance), y: CGFloat(settings.distance))
        }
    }
}
