//
//  ContentView.swift
//  Shared
//
//  Created by Jun Kai Gan on 01/07/2020.
//

import SwiftUI

struct ContentView: View {
    @State var selected = "Home"
    
    var body: some View {
        GeometryReader { geometry in
            VStack{
                Spacer()
                Text("\(selected) Page")
                Spacer()
                Divider()
                HStack {
                    HStack(spacing: 15) {
                        Image(systemName: "house")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 0.25)) {
                                    self.selected = "Home"
                                }
                        }
                        if self.selected == "Home" {
                            Text("Home")
                                .font(.footnote)
                        }
                    }
                    .padding(10)
                    .foregroundColor(selected == "Home" ? Color(#colorLiteral(red: 0.3647058824, green: 0.2588235294, blue: 0.737254902, alpha: 1)) : .black)
                    .background(Color(#colorLiteral(red: 0.3647058824, green: 0.2588235294, blue: 0.737254902, alpha: 1)).opacity(selected == "Home" ? 0.3 : 0))
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))

                    
                    HStack(spacing: 15) {
                        Image(systemName: "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 0.25)) {
                                    self.selected = "Likes"
                                }
                        }
                        if self.selected == "Likes" {
                            Text("Likes")
                                .font(.footnote)
                        }
                    }
                    .padding(12)
                    .foregroundColor(selected == "Likes" ? Color(#colorLiteral(red: 0.8274509804, green: 0.2862745098, blue: 0.6156862745, alpha: 1)) : .black)
                    .background(Color(#colorLiteral(red: 0.8274509804, green: 0.2862745098, blue: 0.6156862745, alpha: 1)).opacity(selected == "Likes" ? 0.3 : 0))
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    
                    
                    HStack(spacing: 15) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 0.25)) {
                                    self.selected = "Search"
                                }
                        }
                        if self.selected == "Search" {
                            Text("Search")
                                .font(.footnote)
                        }
                    }
                    .padding(12)
                    .foregroundColor(selected == "Search" ? Color(#colorLiteral(red: 0.9294117647, green: 0.6509803922, blue: 0.07450980392, alpha: 1)) : .black)
                    .background(Color(#colorLiteral(red: 0.9294117647, green: 0.6509803922, blue: 0.07450980392, alpha: 1)).opacity(selected == "Search" ? 0.3 : 0))
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    
                    
                    HStack(spacing: 15) {
                        Image(systemName: "person")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .onTapGesture {
                                withAnimation(.easeOut(duration: 0.25)) {
                                    self.selected = "Profile"
                                }
                        }
                        if self.selected == "Profile" {
                            Text("Profile")
                                .font(.footnote)
                        }
                    }
                    .padding(12)
                    .foregroundColor(selected == "Profile" ? Color(#colorLiteral(red: 0.01568627451, green: 0.5294117647, blue: 0.6745098039, alpha: 1)) : .black)
                    .background(Color(#colorLiteral(red: 0.01568627451, green: 0.5294117647, blue: 0.6745098039, alpha: 1)).opacity(selected == "Profile" ? 0.3 : 0))
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
