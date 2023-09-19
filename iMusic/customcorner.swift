import SwiftUI

struct customcorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner = .allCorners

    func path( in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))

        return Path(path.cgPath)
    }
}


extension VIEW {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(customcorner(radius: radius, corners: corners))
    }
}