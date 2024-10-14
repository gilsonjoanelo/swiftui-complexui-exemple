//
//  SideMenu.swift
//  ComplexUI
//
//  Created by Gilson on 13/10/24.
//

import SwiftUI

struct SideMenu: View {
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            //profile image
            Image("pic")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
            //padding top for Top close button....
                .padding(.top,50)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Gilson Joanelo")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                //button view profile
                Button(action: {}, label: {
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                })
            }
            
            //tab button
            VStack(alignment: .leading, spacing: 10) {
                TabButton(image: "house", title: "Home", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "clock.arrow.circlepath", title: "History", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "bell.badge", title: "Notifications", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "gearshape.fill", title: "Settings", selectedTab: $selectedTab, animation: animation)
                
                TabButton(image: "questionmark.circle", title: "Help", selectedTab: $selectedTab, animation: animation)
            }
            .padding(.leading , -15)
            .padding(.top, 50)
                
            Spacer()
            
            //sigout button
            VStack(alignment: .leading, spacing: 6) {
                TabButton(image: "rectangle.righthalf.inset.fill.arrow.right", title: "Log Out", selectedTab: .constant(""), animation: animation)
                    .padding(.leading, -15)
                
                Text("App version 1.2.34")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.6)
            }
            
            
         }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}
