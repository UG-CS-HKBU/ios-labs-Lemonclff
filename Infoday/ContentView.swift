//
//  ContentView.swift
//  Infoday
//
//  Created by Martin Choy on 7/9/2022.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("darkMode") var darkMode: Bool = false
    var body: some View {
        TabView {
            
            NewsView().tabItem {
                Image(systemName: "newspaper.fill")
                Text("News")
            }
            DeptView().tabItem {
                Image(systemName: "calendar.circle.fill")
                Text("Events")
            }
            MapView().tabItem {
                Image(systemName: "map.fill")
                Text("Map")
            }
            InfoView().tabItem {
                Image(systemName: "info.circle.fill")
                Text("Info")
            }
        }
        .preferredColorScheme(darkMode ? .dark : .light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
