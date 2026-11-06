import SwiftUI
struct ContentView: View {
    @State private var name = ""
    @State private var greeting = ""
    var body: some View {
        VStack {
            Text("Greeting App")
                .font(.title).bold()
                .padding()
            Text("\(greeting)")
                .font(.title)
            TextField("Enter Name", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .padding()
            Button("Say Hello") {
                if name.isEmpty {
                    greeting = ""
                }
                else {
                    greeting = "Hello, \(name)!"
                }
            }
            Button("Say Goodbye") {
                if name.isEmpty {
                    greeting = ""
                }
                else {
                    greeting = "Goodbye, \(name)!"
                }
            }
            Button("Say Aloha") {
                if name.isEmpty {
                    greeting = ""
                }
                else {
                    greeting = "Aloha, \(name)!"
                }
            }
            Spacer()
        }
    }
}
#Preview {
    ContentView()
}
