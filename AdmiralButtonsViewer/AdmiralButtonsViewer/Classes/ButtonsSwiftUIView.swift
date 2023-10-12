//
//  ButtonsSwiftUIView.swift
//  ExampleiOS
//
//  Created on 15.06.2022.
//

import SwiftUI
import AdmiralTheme

@available(iOS 14.0.0, *)
struct ButtonsSwiftUIView: View {

    public var body: some View {
        NavigationView {
            List {
                ForEach(ButtonsSwiftUIItem.allCases, id: \.id) { item in
                    NavigationLink(destination: view(for: item)) {
                        HStack(alignment: .center) {
                            Text(item.title)
                                .font(.headline)
                            Spacer()
                        }
                    }
                }
            }
        }
        .navigationTitle("Список элементов")
    }
    
    @ViewBuilder
    func view(for type: ButtonsSwiftUIItem) -> some View {
        switch type {
        case .primaryButtons:
            PrimaryButtonsSwiftUIView()
        case .secondaryButtons:
            SecondaryButtonsSwiftUIView()
        case .ghostButtons:
            GhostButtonSwiftUIView()
        case .otherButtons:
            OtherButtonsSwiftUIView()

        }
    }
    
}
