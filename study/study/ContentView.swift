import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    ForEach(0..<24, id: \.self) { hour in
                        HStack {
                            Text("\(hour):00")
                                .frame(width: geometry.size.width / 6, height: 60, alignment: .leading)
                                .foregroundColor(.black)
                                .padding(.leading, 10)
                            
                            Divider()
                                .background(Color.black) // ここで線の色を指定します（黒または白）
                            
                            Spacer() // 残りのスペースを埋めるためのスペーサー
                        }
                        .frame(maxWidth: .infinity, minHeight: 60)
                        .background(Color.white) // 背景色が必要な場合はここで設定
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
