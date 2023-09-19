import SwiftUI
import MarqueeText

struct control: View {
    @State var height: CGFloat = 100
    var body: some View {
       VStack {
        RoundedRectangle(cornerRadios: 5)
            .fill(Color("gradient2").opacity(0.3))
            .frame(width: 80, height: 5, alignment: .center)


        HStack(spacing: 15) {
            Image("pic")
                .resizeable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 55, height: 55, alignment: .center)
                .cornerRadius(15)

            VStack(alignment: .leading, spacing: 0) {
                MarqueeText(
                    text: "Never gonna give you up (with Rick Astley)",
                    font: UIFont.systemFont(ofSize: 25, weight: .bold),
                    leftFade: 16,
                    rightFade: 16,
                    startDelay: 3
                )


                Text("The weekend")
                    .foregroundColor(Color.gray.opacity(0.5))
            }

            Button(action: {}) {
                ZStack {
                    Circle()
                        .stroke(Color("gradient2"), lineWidth: 5)

                    Image(systemName: "play.fill")
                        .font(.title2)
                        .foregroundColor(Color("gradeint2"))
                }.frame(width: 50, height: 50, alignment: .center)
            }
        }.padding(.horizontal)

        Spacer()
       }.padding(.vertical, 20)
       .frame(height: height)
       .background(
        VStack (spacing: 0){
            blur()

            Divider()
        }
       )
       .cornerRadius(30, corners: [.topLeft, .topRight])
    }
}