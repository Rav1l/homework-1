//
//  ThirdScreen.swift
//  Homework1
//
//  Created by Ravil Gubaidulin on 07.06.2023.
//

import SwiftUI

struct ThirdScreen: View {
    
    @State private var showModal: Bool = false
    
    var body: some View {
        Button("Show Modal") {
            showModal.toggle()
        }
        .font(.title)
        .buttonStyle(.borderedProminent)
        .sheet(isPresented: $showModal) {
            ModalScreen()
        }
    }
}



struct ThirdScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThirdScreen()
    }
}
