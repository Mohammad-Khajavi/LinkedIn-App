//
//  MyNetworkScreen.swift
//  Linkedin App
//
//  Created by Mohammad Khajavi on 2024-10-19.
//

import SwiftUI

struct MyNetworkScreen: View {
    
    var networkData: [NetworkModel] = [
        .init(id: 0, name: "Marry", position: "SDE at Paytm", mutual: 34, image: "00"),
        .init(id: 1, name: "Peter", position: "Assistant Manager", mutual: 45, image: "01"),
        .init(id: 2, name: "Jenny", position: "SDE at Ginger ", mutual: 67, image: "02"),
        .init(id: 3, name: "Sara", position: "open to work", mutual: 103, image: "03"),
        .init(id: 4, name: "Kia", position: "GET at HCL", mutual: 12, image: "04"),
        .init(id: 5, name: "Shristi", position: "Student", mutual: 78, image: "05"),
        .init(id: 6, name: "Rachel", position: "intern at iNeuron", mutual: 90, image: "00")
    ]
    
    
    var body: some View {
            NavigationView {
                VStack {
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
                    .padding(.top)
                    
                    
                    HStack{
                        
                        Button("Manage my network") {
                            // Handle manage network action
                        }
                        .font(.system(size: 20))
                        .padding(.leading)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)

                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15)
                            .padding(.trailing)
                        
                    }
                    
                    Divider()
                        .frame(height: 10)
                        .background(.gray.opacity(0.3))
                            
                    
                    
                    HStack{
                        
                        Button("Invitations") {
                        }
                        .font(.title2)
                        .padding(.leading)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                        
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 10, height: 15)
                            .padding(.trailing)

                    }
                    
                    List(networkData) { user in
                        HStack {
                            Image(user.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text(user.name)
                                    .font(.headline)
                                Text(user.position)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                HStack{
                                    Image(systemName: "infinity")
                                        .resizable()
                                        .foregroundColor(.gray)
                                        .frame(width: 10, height: 5)
                                    
                                    
                                    Text("\(user.mutual) mutual connections")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                    
                                }
                                
                            }
                            
                            Spacer()
                            
                            HStack {
                                Button(action: {
                                }) {
                                    Image(systemName: "xmark.circle")
                                        .resizable()
                                        .foregroundColor(.gray)
                                        .frame(width: 40, height: 40)
                                }
                                
                                Button(action: {
                                }) {
                                    Image(systemName: "checkmark.circle")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.blue)
                                }
                            }
                            .padding(.leading, 10)
                        }
                        .padding(.vertical, 8)
                    }
                    .listStyle(PlainListStyle())
                }
            }
        }
    
        
    }
    


#Preview {
    MyNetworkScreen()
}
