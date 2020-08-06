import SwiftUI

struct BackgroundView: View {
   
    var body: some View {
        Rectangle()
            .fill(Color("background"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .edgesIgnoringSafeArea(.all)
    }
}
struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
