//
//  Home.swift
//  ComplexUI
//
//  Created by Gilson on 13/10/24.
//

import SwiftUI

struct Home: View {
    @Binding var selectedTab: String
    
    init(selectedTab: Binding<String>) {
        self._selectedTab = selectedTab
        UITableView.appearance().isHidden = true
        
    }
    
    var body: some View {
        //Tab view with
        TabView(selection: $selectedTab) {
            //views..
            HomePage()
                .tag("Home")
            
            History()
                .tag("History")
            
            Settings()
                .tag("Settings")
            
            Help()
                .tag("Help")
            
            Notifications()
                .tag("Notifications")
        }
    }
}

#Preview {
    ContentView()
}

struct HomePage: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20){
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: getRect().width - 50, height: 400)
                    .cornerRadius(20)
                
                VStack(alignment: .leading, spacing: 5) {
                    Text("Gilson Joanelo")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    Text("dlsjdlsjdlsjl ldlj sldsldk")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
            }
                .navigationTitle("Home")
        }
    }
}


struct History: View {
    var body: some View {
        NavigationView {
            Text("History")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("History")
        }
    }
}

struct Notifications: View {
    var body: some View {
        NavigationView {
            Text("Notifications")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Notifications")
        }
    }
}

struct Settings: View {
    var body: some View {
        NavigationView {
            Text("Settings")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Settings")
        }
    }
}

struct Help: View {
    var body: some View {
        NavigationView {
            Text("Help")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
                .navigationTitle("Help")
        }
    }
}

