//
//  ContentView.swift
//  AfricaApp-SwiftUI
//
//  Created by Justyna Kowalkowska on 15/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            } //: List
            .navigationBarTitle("Africa", displayMode: .large)
        } //: Navigation
    }
}

//MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
