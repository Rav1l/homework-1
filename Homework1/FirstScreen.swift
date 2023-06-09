//
//  FirstScreen.swift
//  Homework1
//
//  Created by Ravil Gubaidulin on 08.06.2023.
//

import SwiftUI

struct FirstScreen: View {
    
    @Binding var selectedTab: Int
    @Binding var isShowDetail: Bool
    
    var body: some View {
        Button("Second tab detail") {
            selectedTab = 1
            isShowDetail = true
        }
        .font(.title)
        .buttonStyle(.borderedProminent)
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        OtherView()
    }
    
    private struct OtherView : View {
        
        @State var selectTab: Int = 1
        @State var isShowingDetail: Bool = false
        
        var body: some View {
            FirstScreen(selectedTab: $selectTab, isShowDetail: $isShowingDetail)
        }
    }
}
