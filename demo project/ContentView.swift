import SwiftUI

struct ContentView: View {
    @State private var decision = ""
    @State private var name = ""
    @State private var hasMetRequirements = false
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                TextField("Decison being made", text: $name)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .font(.title)
                Spacer()
                Text("🪾")
                    .font(.system(size: 470))
                    .padding()
                    .multilineTextAlignment(.center)
                Toggle("have branch and leaves", isOn: $hasMetRequirements)
                Spacer()
                TextField("Make your decision", text: $decision)
                    .padding()
                    .textFieldStyle(.roundedBorder)
                    .font(.title)
                    .disabled(!hasMetRequirements)
                Spacer()
                
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
