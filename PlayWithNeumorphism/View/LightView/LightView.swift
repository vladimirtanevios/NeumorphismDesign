import SwiftUI

struct Light: View {
        
    var lightPosition: LightPosition
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.gray)
            Rectangle()
                .modifier(LightModifier(lightPosition: lightPosition))
        }
    }
}
