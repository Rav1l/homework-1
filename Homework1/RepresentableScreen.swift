//
//  RepresantableScreen.swift
//  Homework1
//
//  Created by Ravil Gubaidulin on 09.06.2023.
//

import SwiftUI

struct RepresentableScreen: View {
    
    @State var text: String = ""
    
    var body: some View {
        VStack {
            Text(text)
            UITextFieldViewRepresentable(text: $text,
                                         placeholder: "Type...")
            .frame(width: 350, height: 30)
        }
    }
}

struct RepresantableScreen_Previews: PreviewProvider {
    static var previews: some View {
        RepresentableScreen()
    }
}

struct UITextFieldViewRepresentable: UIViewRepresentable {
    
    @Binding var text: String
    let placeholder: String
    let placeholderColor: UIColor
    
    init(text: Binding<String>, placeholder: String, placeholderColor: UIColor = .systemBlue) {
        self._text = text
        self.placeholder = placeholder
        self.placeholderColor = placeholderColor
    }
    
    func makeUIView(context: Context) -> UITextField {
        let textField = getTextField()
        textField.delegate = context.coordinator
        return textField
    }
    
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        uiView.text = text
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        
        @Binding var text: String
        
        init(text: Binding<String>) {
            self._text = text
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }
    
    private func getTextField() -> UITextField {
        let textField = UITextField(frame: .zero)
        textField.borderStyle = .roundedRect
        let placeholder = NSAttributedString(
            string: placeholder,
            attributes: [
                .foregroundColor : placeholderColor
            ])
        textField.attributedPlaceholder = placeholder
        return textField
    }
}
