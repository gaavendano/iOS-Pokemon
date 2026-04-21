import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                Text("Pokedex")
                    .font(.largeTitle.bold())

                Text("Very basic app outline")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                OutlineSection(
                    title: "Search Area",
                    lines: [
                        "User types a Pokemon name here",
                        "App filters the Pokemon list"
                    ]
                )

                OutlineSection(
                    title: "Pokemon List",
                    lines: [
                        "Show Pokemon names",
                        "Tap one Pokemon to view details"
                    ]
                )

                OutlineSection(
                    title: "Pokemon Details",
                    lines: [
                        "Show selected Pokemon name",
                        "Show type",
                        "Show short description or image"
                    ]
                )

                Spacer()
            }
            .padding()
            .navigationTitle("Pokemon App")
        }
    }
}

private struct OutlineSection: View {
    let title: String
    let lines: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.headline)

            ForEach(lines, id: \.self) { line in
                Text("• \(line)")
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color.gray.opacity(0.35), lineWidth: 1)
        )
    }
}

#Preview {
    ContentView()
}
