//
//  GalleyView.swift
//  AfricaApp-SwiftUI
//
//  Created by Justyna Kowalkowska on 23/06/2021.
//

import SwiftUI

struct GalleyView: View {
    
    //MARK: - Property
    
    //MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        } //: Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

//MARK: - Preview

struct GalleyView_Previews: PreviewProvider {
    static var previews: some View {
        GalleyView()
    }
}
