import SwiftUI

struct LightsView: View {
    
    var left: LightPosition
    var right: LightPosition
    
    var body: some View {
        HStack {
            Light(lightPosition: left)
            Spacer()
            Light(lightPosition: right)
        }
    }
}
