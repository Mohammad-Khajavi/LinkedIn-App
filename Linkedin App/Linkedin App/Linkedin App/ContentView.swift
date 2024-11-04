//
//  ContentView.swift
//  Linkedin App
//
//  Created by Mohammad Khajavi on 2024-10-19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("House")
                }
            
            MyNetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("My Network")
                }
            
            MyPostScreen()
                .tabItem {
                    Image(systemName: "plus.app.fill")
                    Text("Post")
                }
            
            MyNotificationScreen()
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                    Text("Notification")
                }
            
            MyJobsScreen()
                .tabItem {
                    Image(systemName: "briefcase.fill")
                    Text("Jobs")
                }
        }
    }
}

#Preview {
    ContentView()
}
