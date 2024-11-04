//
//  MyNotificationScreen.swift
//  Linkedin App
//
//  Created by Mohammad Khajavi on 2024-10-19.

import SwiftUI

struct MyNotificationScreen: View {
    
    var notifications = [
        NotificationModel(title: "System Update", message: "A new software update is available.", aviablity: true, image: "8"),
        NotificationModel(title: "New Message", message: "You have received a new message.", aviablity: true, image: "9"),
        NotificationModel(title: "Payment Reminder", message: "Your payment is due tomorrow.", aviablity: true, image: "10"),
        NotificationModel(title: "Promotion Alert", message: "Check out our latest offers!", aviablity: false, image: "11"),
        NotificationModel(title: "Friend Request", message: "You have a new friend request.", aviablity: false, image: "12"),
        NotificationModel(title: "Security Alert", message: "Suspicious login attempt detected.", aviablity: true, image: "13"),
        NotificationModel(title: "Event Reminder", message: "Your event is starting soon.", aviablity: false, image: "14")
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
                
                HStack {
                    Image(systemName: "bell.badge.fill")
                        .resizable()
                        .frame(width: 20, height: 25)
                        .padding(.leading)
                        .foregroundColor(.red)

                    Button("Manage Notifications") {}
                    .font(.system(size: 20))
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
                
                HStack {
                    Button("Jobs") {}
                    .font(.title2)
                    .padding(.leading)
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)

                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 15)
                        .padding(.trailing)
                }
                   
                Divider()
                    .background(.gray.opacity(0.3))
                
                List(notifications) { notification in
                    HStack {
                        Image(notification.image)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text(notification.title)
                                    .font(.headline)
                                if notification.aviablity {
                                    Image(systemName: "bell.fill")
                                        .resizable()
                                        .frame(width: 22, height: 25)
                                        .foregroundColor(.red)
                                }
                            }
                            
                            Text(notification.message)
                                .font(.system(size: 18))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        
                        Button(action: {}) {
                            Image(systemName: "trash")
                                .resizable()
                                .foregroundColor(.red)
                                .frame(width: 40, height: 40)
                        }
                        Button(action: {}) {
                            Image(systemName: "checkmark.seal.fill")
                                .resizable()
                                .frame(width: 40, height: 40)                         .foregroundColor(.green.opacity(0.7))
                        }
                    }
                    .padding(.vertical, 5)
                }
                .listStyle(PlainListStyle())
            }
        }
    }
}

#Preview {
    MyNotificationScreen()
}


