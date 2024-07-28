//
//  LoginScreen.swift
//  pos_restaurant
//
//  Created by May Yi on 28/07/2024.
//

import Foundation
import SwiftUI

struct LoginScreen: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var isLoggedIn = false
    @State private var showAlert = false
    @State private var alertMessage = ""

    var body: some View {
        NavigationView {
            ZStack {
                // Background color
                Color.white
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer()
                    
                    Image("company")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .padding(.bottom, 50)

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

                    // Login Button
                    NavigationLink(destination: HomeScreen(), isActive: $isLoggedIn) {
                        Button(action: {
                            login()
                        }) {
                            Text("Login")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 60)
                                .background(Color.blue)
                                .cornerRadius(15.0)
                        }
                    }

                    Spacer()

                    // Sign Up Text and Button
                    HStack {
                        Text("Don't have an account?")
                            .foregroundColor(.black)
                        NavigationLink(destination: SignupView()) {
                            Text("Sign Up")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.top, 20)
                }
                .padding()
            }
            .navigationBarHidden(true)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Error"), message: Text(alertMessage), dismissButton: .default(Text("OK")))
            }
        }
    }

    func login() {
        NetworkManager.shared.login(username: username, password: password) { result in
            switch result {
            case .success(let response):
                if let token = response.token {
                    // Handle successful login
                    DispatchQueue.main.async {
                        // Save token or perform actions on successful login
                        self.isLoggedIn = true
                    }
                } else if let error = response.error {
                    // Handle error response
                    DispatchQueue.main.async {
                        self.alertMessage = error
                        self.showAlert = true
                    }
                }
            case .failure(let error):
                // Handle network error
                DispatchQueue.main.async {
                    self.alertMessage = error.localizedDescription
                    self.showAlert = true
                }
            }
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
