//
//  HeadingView.swift
//  AfricaApp-SwiftUI
//
//  Created by Justyna Kowalkowska on 12/07/2021.
//

import SwiftUI

struct HeadingView: View {
    
    //MARK: - Properties
    
    var headingImage: String
    var headingText: String
    
    //MARK: - Body
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            Text(headingText)
                .font(.title)
                .fontWeight(.bold)
        } //:HStack
        .padding(.vertical)
    }
}

//MARK: - Preview

struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
            .previewLayout(PreviewLayout.sizeThatFits)
            .padding()
    }
}
