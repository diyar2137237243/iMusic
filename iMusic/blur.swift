import SwiftUI

struct blur: UIViewRepresentable {

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialLight))

        return view
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        
    }
    
}