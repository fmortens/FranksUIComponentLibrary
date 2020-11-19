import SwiftUI

struct RoundButton: View {
    
    let titleText: String
    let handleDidTap: () -> Void
    
    public init(
        titleText: String,
        _ handleDidTap: @escaping () -> Void
    ) {
        self.titleText = titleText
        self.handleDidTap = handleDidTap
    }
    
    var body: some View {
        Button(titleText) {
            handleDidTap()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RoundButton(titleText: "Tap me!") {
            print("Tapped!")
        }
    }
}
