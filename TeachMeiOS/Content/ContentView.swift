//
//  ContentView.swift
//  TeachMeiOS
//
//  Created by Oleh Veheria on 23.09.2022.
//

import SwiftUI

struct ContentView: View {
    var viewModel = ContentViewModel()
    
    private let cellHeight: CGFloat = 300
    private let cellCornerRadius: CGFloat = 10
    private let titleCornerRadius: CGFloat = 10
    
    @State var selectedComand: ContentModel.Command?
    
    var body: some View {
        ScrollView {
            VStack(spacing: .zero) {
                ForEach(viewModel.commands, id: \.self) { command in
                    
                    Button(
                        action: { selectedComand = command },
                        label: {
                            
                            command.image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 380, height: 300)
                                .cornerRadius(cellCornerRadius)
                                .overlay(
                                    Text(command.name)
                                        .font(.largeTitle)
                                        .fontWeight(.medium)
                                        .padding(9)
                                        .background(.black)
                                        .cornerRadius(10)
                                        .frame(maxHeight: .infinity, alignment: .bottom)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                )
                        }
                    )
                    .padding()
                }
            }
        }
        .foregroundColor(.white)
        .background(Color.black)
        .sheet(item: $selectedComand) { command in
            DetailView(
                image: command.image,
                title: command.name,
                text: command.text
            )
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
