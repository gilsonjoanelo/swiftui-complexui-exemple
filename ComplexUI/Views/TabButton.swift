//
//  TabButton.swift
//  ComplexUI
//
//  Created by Gilson on 13/10/24.
//

import SwiftUI

struct TabButton: View {
    var image: String
    var title: String
    
    //selected tab.....
    @Binding var selectedTab: String
    //For hero animation slide...
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) { selectedTab = title }
        }){
            HStack(spacing: 15) {
                Image(systemName: image)
                    .font(.title2)
                    .frame(width: 30)
                
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(selectedTab == title ? Color("blue") : .white)
            .padding(.vertical, 12)
            .padding(.horizontal, 10)
            //max frame
            .frame(maxWidth: getRect().width - 170, alignment: .leading)
            .background(
                //hero animation..
                ZStack {
                    if selectedTab == title {
                        Color(.white)
                            .opacity(selectedTab == title ? 1:0)
                            .clipShape(CustomCorners(corners: [.topRight, .bottomRight], radius: 12))
                            .matchedGeometryEffect(id: "TAB", in: animation)
                    }
                }
            )
        }
    }
}

#Preview {
    ContentView()
}
