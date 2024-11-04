//
//  MyJobsScreen.swift
//  Linkedin App
//
//  Created by Mohammad Khajavi on 2024-10-19.
//

import SwiftUI

struct MyJobsScreen: View {
    
    var jobs = [
        JobModel(title: "iOS Developer", level: "Senior", salary: "100k - 150k"),
        JobModel(title: "Android Developer", level: "Mid-Level", salary: "80k - 120k"),
        JobModel(title: "Web Developer", level: "Junior", salary: "60k - 90k"),
        JobModel(title: "Backend Engineer", level: "Senior", salary: "110k - 160k"),
        JobModel(title: "Data Scientist", level: "Mid-Level", salary: "95k - 140k"),
        JobModel(title: "DevOps Engineer", level: "Senior", salary: "105k - 155k"),
        JobModel(title: "Product Manager", level: "Lead", salary: "120k - 180k"),
        JobModel(title: "UI/UX Designer", level: "Mid-Level", salary: "70k - 110k"),
        JobModel(title: "QA Engineer", level: "Junior", salary: "55k - 85k"),
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
                        
                        Button("Manage Jobs") {
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
                        
                        Button("Jobs") {
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
                    
                    
                    
                    List(jobs) {job in
                        HStack {
                            Image(systemName: "briefcase")
                                .resizable()
                                .frame(width: 55, height: 50)
                                .padding(.trailing, 10)
                            
                            VStack(alignment: .leading) {
                                Text(job.title)
                                    .font(.headline)
                                
                                Text(job.level)
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                                
                                Text(job.salary)
                                    .font(.system(size: 18))
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            
                            HStack {
                                Button(action: {
                                }) {
                                    Image(systemName: "xmark.circle")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.gray)
                                }
                                
                                Button(action: {
                                }) {
                                    Image(systemName: "newspaper")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.blue)
                                }
                            }
                            .padding(.leading, 10)
                        }
                    }
                    .listStyle(PlainListStyle())
                }
            }
        }
}

#Preview {
    MyJobsScreen()
}
