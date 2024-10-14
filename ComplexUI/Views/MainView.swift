//
//  MainView.swift
//  ComplexUI
//
//  Created by Gilson on 13/10/24.
//

import SwiftUI

struct MainView: View {
    //var selected tab view
    @State var selectedTab: String = "home"
    @State var showMenu = false
    
    
    var body: some View {
        ZStack {
            Color("blue")
                .ignoresSafeArea()
            
            //Side menu....
            ScrollView(getRect().height < 750 ? .vertical : .init(), showsIndicators: false) {
                SideMenu(selectedTab: $selectedTab)
            }
            
            ZStack {
                //two backgoud colors...
                
                Color.white
                    .opacity(0.5)
                    .cornerRadius(showMenu ? 15 : 0)
                //shadow
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0.0)
                    .offset(x: showMenu ? -25 : 0)
                    .padding(.vertical, 30)
                
                Color.white
                    .opacity(0.4)
                    .cornerRadius(showMenu ? 15 : 0)
                //shadow
                    .shadow(color: Color.black.opacity(0.07), radius: 5, x: -5, y: 0.0)
                    .offset(x: showMenu ? -50 : 0)
                    .padding(.vertical, 60)
                
                Home(selectedTab: $selectedTab)
                    .cornerRadius(showMenu ? 15 : 0)
            }
            //Scaling em Moving
                .scaleEffect(showMenu ? 0.84 : 1)
                .offset(x: showMenu ? getRect().width - 120 : 0)
                .ignoresSafeArea()
                .overlay (
                    //menu button
                    Button(action: {
                        withAnimation(.spring()) {
                            showMenu.toggle()
                        }
                    }, label: {
                        //animated drwaer
                        VStack(spacing: 5) {
                            Capsule()
                                .fill(showMenu ? Color.white : Color.primary)
                                .frame(width: 30, height: 3)
                            //roting
                                .rotationEffect(.init(degrees: showMenu ? -50 : 0))
                                .offset(x: showMenu ? 2 : 0, y: showMenu ? 9 : 0)
                            
                            VStack(spacing: 5) {
                                Capsule()
                                    .fill(showMenu ? Color.white : Color.primary)
                                    .frame(width: 30, height: 3)
                                //movin up clicked
                                
                                
                                Capsule()
                                    .fill(showMenu ? Color.white : Color.primary)
                                    .frame(width: 30, height: 3)
                                    .offset(y: showMenu ? -8 : 0)
                            }
                            .rotationEffect(.init(degrees: showMenu ? 50 : 0))
                        }
                    })
                    .padding()
                    
                    , alignment: .topLeading
                )
        }
    }
}

#Preview {
    MainView()
}

//exteionsios
extension View {
    
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
