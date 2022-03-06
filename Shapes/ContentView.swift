import SwiftUI

struct ContentView: View {
    @State private var change = false
    
    var body: some View {
        VStack {
            WaveView(yOffset: change ? -0.5 : 0.5)
                .fill(Color.orange)
                .frame(height: 100)
                .shadow(radius: 10)
                .onAppear {
                    change.toggle()
                }
                .animation(.easeOut(duration: 2).repeatForever(autoreverses: true), value: UUID())
                
            Text("Wave shape")
                .padding()
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
