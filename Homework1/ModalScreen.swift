//
//  ModalScreen.swift
//  Homework1
//
//  Created by Ravil Gubaidulin on 08.06.2023.
//

import SwiftUI

struct ModalScreen: View {
    
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        Button("Back") {
            dismiss()
        }
        .buttonStyle(.borderedProminent)
        .font(.title)
    }
}


struct ModalScreen_Previews: PreviewProvider {
    static var previews: some View {
        ModalScreen()
    }
}
