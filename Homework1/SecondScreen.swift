//
//  SecondScreen.swift
//  Homework1
//
//  Created by Ravil Gubaidulin on 07.06.2023.
//

import SwiftUI

struct SecondScreen: View {
    
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Detail",
                               destination: DetailScreen(),
                               isActive: $isShowingDetail)
                NavigationLink("UIViewRepresentable",
                               destination: RepresentableScreen())
            }
        }
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
    
    private struct OtherView : View {
        @State var isShowingDetail: Bool = false
        
        var body: some View {
            SecondScreen(isShowingDetail: $isShowingDetail)
        }
    }
}
