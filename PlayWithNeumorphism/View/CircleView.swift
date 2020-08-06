import SwiftUI

struct CircleView: View {

    let circle = CircleMenuSettings()
    let capsule = CapsuleSettings()

    var body: some View {
        HStack {
            Spacer()
            NeumorphicRoundedRectangle(settings: circle)
            NeumorphicRoundedRectangle(settings: circle)
            NeumorphicRoundedRectangle(settings: circle)
            Spacer()
            ZStack {
                NeumorphicRoundedRectangle(settings: capsule)
                Text("Generate Code")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}
