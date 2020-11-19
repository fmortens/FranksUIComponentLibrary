import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct RaisedButton: View {
    
    let titleText: String
    let foregroundColor: Color
    let backgroundColor: Color
    let handleDidTap: () -> Void
    
    @State var active = false {
        didSet {
            if !active { return }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                active.toggle()
            }
        }
    }
    
    public init(
        titleText: String,
        foregroundColor: Color = .black,
        backgroundColor: Color = .white,
        _ handleDidTap: @escaping () -> Void
    ) {
        self.titleText = titleText
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
        self.handleDidTap = handleDidTap
    }
    
    public var body: some View {
        Button(
            titleText,
            action: {
                handleDidTap()
                active.toggle()
            }
        )
        .padding(10)
        .foregroundColor(foregroundColor)
        .background(backgroundColor)
        .cornerRadius(10)
        .shadow(color: .gray, radius: active ? 1 : 4, x: 0, y: 0)
        .animation(Animation.spring(response: 0.7, dampingFraction: 0.9, blendDuration: 0))
    }
    
}


@available(iOS 13.0, macOS 10.15, *)
struct RaisedButton_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            RaisedButton(titleText: "Tap me", foregroundColor: .gray, backgroundColor: .white) {
                print("Button was tapped")
            }
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
            
            RaisedButton(titleText: "Tap me 2", foregroundColor: .green, backgroundColor: Color(Color.RGBColorSpace.sRGB, red: 0.8, green: 1, blue: 0.8, opacity: 1)) {
                print("Button 2 was tapped")
            }
                .previewLayout(PreviewLayout.sizeThatFits)
                .padding()
        }
    }
    
}
