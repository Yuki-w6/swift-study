import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollViewContainer()
    }
}

struct ScrollViewContainer: View {
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    ForEach(0..<24, id: \.self) { hour in
                        HourView(width: geometry.size.width / 6, hour: hour)
                        Divider()
                    }
                }
            }
        }
    }
}

struct HourView: View {
    let width: CGFloat
    let hour: Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Text("\(hour):00")
                .frame(width: width, height: 60, alignment: .leading)
                .padding(.leading, 10)
                .background(Color.white)
            
            Divider() // Dividerをテキストの横に配置
                .frame(height: 60) // Dividerの高さをテキストの高さに合わせる
            
            Spacer() // 残りのスペースを埋めるためのスペーサー
        }
        .frame(maxWidth: .infinity, minHeight: 60)
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
