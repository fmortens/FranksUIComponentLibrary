import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct FRoundButton: View {
    
    let titleText: String
    let handleDidTap: () -> Void
    
    public init(
        titleText: String,
        _ handleDidTap: @escaping () -> Void
    ) {
        self.titleText = titleText
        self.handleDidTap = handleDidTap
    }
    
    public var body: some View {
        Button(titleText) {
            handleDidTap()
        }
    }
}

@available(iOS 13.0, macOS 10.15, *)
public struct FRoundButton_Previews: PreviewProvider {
    public static var previews: some View {
        FRoundButton(titleText: "Tap me!") {
            print("Tapped!")
        }
        .previewLayout(PreviewLayout.sizeThatFits)
        .padding()
    }
}
