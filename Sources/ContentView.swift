import SwiftUI

struct ContentView: View {
    @State private var showAlert = false

    var body: some View {
        VStack {
            Spacer()

            Button(action: {
                showAlert = true
            }) {
                Text("OK")
                    .font(.title)
                    .padding(.horizontal, 60)
                    .padding(.vertical, 20)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .alert("確認", isPresented: $showAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text("OKボタンが押されました")
            }

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
