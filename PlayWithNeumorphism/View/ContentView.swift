import SwiftUI

struct ContentView: View {
    
    @ObservedObject var settings = NeumorphicDynamicSettings()
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(spacing: 10) {
                VStack {
                    LightsView(left: .topLeading, right: .topTrailing)
                    Spacer()
                    NeumorphicDynamicRoundedRectangle(settings: settings)
                    Spacer()
                    LightsView(left: .bottomLeading, right: .bottomTrailing)
                }
                .frame(minWidth: 250, idealWidth: 300, maxWidth: 350, minHeight: 250, idealHeight: 300, maxHeight: 350, alignment: .center)
                
                VStack {
                    CircleView()
                    
                     SettingsView(
                         width: $settings.width,
                         height: $settings.height,
                         cornerRadius: $settings.cornerRadius,
                         distance: $settings.distance,
                         intensity: $settings.intensity,
                         blur: $settings.blur)
                     .padding()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
