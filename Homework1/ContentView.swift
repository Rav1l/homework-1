//
//  ContentView.swift
//  Homework1
//
//  Created by Ravil Gubaidulin on 07.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var tabSelection: Int = 0
    @State private var isShowingDetail = false
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
                FirstScreen(selectedTab: $tabSelection, isShowDetail: $isShowingDetail)
                    .tabItem {
                        Label("First", systemImage: "1.circle.fill")
                    }
                    .tag(0)
                SecondScreen(isShowingDetail: $isShowingDetail)
                    .tabItem {
                        Label("Second", systemImage: "2.circle.fill")
                    }
                    .tag(1)
                ThirdScreen()
                    .tabItem {
                        Label("Third", systemImage: "3.circle.fill")
                    }
                    .tag(2)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
