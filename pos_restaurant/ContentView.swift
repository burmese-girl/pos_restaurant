//
//  ContentView.swift
//  pos_restaurant
//
//  Created by May Yi on 28/07/2024.
//


import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            // Background color
            Color.white
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 290, height: 260)
                    .padding(.bottom, 10)
                
                TextField("Username", text: $username)
                                   .padding()
                                   .background(Color.white)
                                   .cornerRadius(5.0)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 5.0)
                                           .stroke(Color.blue, lineWidth: 2.0)
                                   )
                                   .padding(.bottom, 20)
                                   .autocapitalization(.none)
                                   .disableAutocorrection(true)
                
                SecureField("Password", text: $password)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(5.0)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5.0)
                                            .stroke(Color.blue, lineWidth: 2.0)
                                    )
                                    .padding(.bottom, 20)
                
                Button(action: {
                    // Handle login action
                    print("Login button tapped")
                }) {
                    Text("Login")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundColor(.black)
                    Button(action: {
                        // Handle sign up action
                    }) {
                        Text("Sign Up")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top, 20)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
