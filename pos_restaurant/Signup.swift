//
//  signup.swift
//  pos_restaurant
//
//  Created by May Yi on 28/07/2024.
//

import Foundation
import SwiftUI

struct SignupView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var email: String = ""

    var body: some View {
        ZStack {
            // Background color
            Color.white
                .edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                
                Image("company")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 100)
                    .padding(.bottom, 50)
                Text("Registration")
                    .font(.headline)
                // Email TextField with blue border
                TextField("Email", text: $email)
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

                // Username TextField with blue border
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

                // Password SecureField with blue border
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5.0)
                            .stroke(Color.blue, lineWidth: 2.0)
                    )
                    .padding(.bottom, 20)

                // Signup Button
                Button(action: {
                    // Handle signup action
                    print("Signup button tapped")
                }) {
                    Text("Sign Up")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
                
                Spacer()
                
                // Login Text and Button
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.black)
                    NavigationLink(destination: ContentView()) {
                        Text("Log In")
                            .foregroundColor(.blue)
                    }
                }
                .padding(.top, 20)
            }
            .padding()
        }
        .navigationBarHidden(true)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
