//
//  HomeScreen.swift
//  Linkedin App
//
//  Created by Mohammad Khajavi on 2024-10-19.
//

import SwiftUI


struct HomeScreen: View {
    
    var postData: [PostModel] = [
        .init(id: 0, Image: "0", title: "iNeuron", followers: 4066, profileImage: "00"),
        .init(id: 1, Image: "1", title: "Learnyst", followers: 2345, profileImage: "01"),
        .init(id: 2, Image: "2", title: "Synopsys inc", followers: 1235, profileImage: "02"),
        .init(id: 3, Image: "3", title: "Skill-Lync", followers: 908, profileImage: "03"),
        .init(id: 4, Image: "4", title: "Intel", followers: 1234, profileImage: "04"),
        .init(id: 5, Image: "5", title: "HP", followers: 567, profileImage: "05"),
        .init(id: 6, Image: "6", title: "JungleWorks", followers: 346, profileImage: "00")
        ]
    
    
    var body: some View {
        NavigationView{
            VStack{
                HStack {
                    Image("demo")
                        .resizable()
                        .frame(width: 40, height: 60)
                        .clipShape(Circle())
                        .padding(.leading)
                    
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: 40)
                        .foregroundColor(.blue.opacity(0.1))
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.black)
                                TextField("Search", text: .constant(""))
                                Spacer()
                            }
                            .padding(.horizontal, 10)
                        )
                    
                    Image(systemName: "ellipsis.bubble.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.trailing)
                        .foregroundColor(.gray.opacity(0.9))
                }
                
                Divider()
                    .frame(height: 10)
                
                
                HStack(spacing: 0){
                    Image(systemName: "square.and.pencil")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding(.leading)
                    
                    Spacer()
                        
                    
                    Button("Start a Post")
                    {
                        
                    }
                    .font(.system(size: 20))
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                }
                .padding(.bottom,5)
                Spacer()
                
                
                Divider()
                    .padding(.bottom,5)
                    
                
                
                HStack(spacing: 20){
                    
                    HStack{
                        
                        Image(systemName: "photo.artframe")
                            .resizable()
                            .frame(width:30, height:20)
                            .foregroundColor(.blue)
                        
                        
                        Text("Photo")
                            .bold()
                        
                    }
                    .padding(.leading)
                    Spacer()
                    
                    HStack{
                        
                        Image(systemName: "video.fill")
                            .resizable()
                            .frame(width:30, height:20)
                            .foregroundColor(.green)
                        
                        Text("Video")
                            .bold()
                        
                    }
                    Spacer()
                    
                    
                    HStack{
                        
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width:30, height:20)
                            .foregroundColor(.yellow)
                        
                        Text("Event")
                            .bold()
                        
                    }
                    .padding(.trailing)

                    
                    
                }
                .padding(.bottom,30)
                

                
                
                Divider()
                    .frame(height: 10)
                    .background(.gray.opacity(0.3))
                
                
                ScrollView{
                    ForEach(postData){ post in
                        VStack(alignment: .leading){
                            
                            HStack{
                                Image(post.profileImage)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                                
                                
                                VStack(alignment: .leading){
                                    Text(post.title)
                                        .font(.headline)
                                    
                                    Text("\(post.followers) followers")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    
                                    Text("8m")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                    
                                }
                                
                                Spacer()
                                
                                
                                Image(systemName: "ellipsis")
                                    .foregroundColor(.gray)
                                    .font(.title2)
                                    .padding(.trailing)
                                
                            }
                            .padding(.horizontal)
                            
                            
                            
                            
                            Text("Looking for IOS-15 course? Learn Swift UI with IOS-15 now at Udemy")
                                .padding(.horizontal)
                            
                            Image(post.Image)
                                .resizable()
                                .scaledToFit()
                                .frame(maxWidth: .infinity, maxHeight: 300)
                                .clipped()

                            
                            Divider()
                            
                            
                            
                            HStack(spacing: 15) {
                                Button(action: {}) {
                                    HStack {
                                        Image(systemName: "hand.thumbsup")
                                        Text("Like")
                                            
                                    }
                                    .foregroundColor(.black)
                                }

                                Button(action: {}) {
                                    HStack {
                                        Image(systemName: "bubble.left")
                                        Text("Comment")
                                            
                                    }
                                    .foregroundColor(.black)
                                }

                                Button(action: {}) {
                                    HStack {
                                        Image(systemName: "arrowshape.turn.up.right")
                                        Text("Share")
                                            
                                    }
                                    .foregroundColor(.black)
                                }

                                Button(action: {}) {
                                    HStack {
                                        Image(systemName: "paperplane.fill")
                                        Text("Send")
                                    }
                                    .foregroundColor(.black)
                                }
                            }
                            .padding(.horizontal)
                            .padding(.bottom,20)

                            
                        }
                        
                        
                        Divider()
                            .frame(height: 10)
                            .background(.gray.opacity(0.3))
                    }
                }
            }
        }
    }
}

#Preview {
    HomeScreen()
}
