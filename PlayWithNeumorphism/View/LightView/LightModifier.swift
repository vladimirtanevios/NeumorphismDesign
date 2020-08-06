import SwiftUI

struct LightModifier: ViewModifier {
        
    @State var lightClick: Bool = false
    
    let lightPosition: LightPosition
    
    func body(content: Content) -> some View {
        return content
            .overlay(
                Circle()
                    .frame(width: lightClick ? 20 : 0, height: lightClick ? 20 : 0)
                    .foregroundColor(.yellow)
                    .shadow(
                        color: .yellow,
                        radius: CGFloat(10), x: CGFloat(1), y: CGFloat(1))
            )
            .frame(width: 50, height: 50)
            .foregroundColor(Color("background"))
            .offset(x: xPosition(), y: yPosition())
            .onTapGesture {
                self.lightClick.toggle()
        }
    }
    
    func xPosition() -> CGFloat {
        switch lightPosition {
        case .topLeading:
            return CGFloat(5)
        case .topTrailing:
            return CGFloat(-5)
        case .bottomLeading:
            return CGFloat(5)
        case .bottomTrailing:
            return CGFloat(-5)
        }
    }
    
    func yPosition() -> CGFloat {
        switch lightPosition {
        case .topLeading:
            return CGFloat(5)
        case .topTrailing:
            return CGFloat(5)
        case .bottomLeading:
            return CGFloat(-5)
        case .bottomTrailing:
            return CGFloat(-5)
        }
    }
}
