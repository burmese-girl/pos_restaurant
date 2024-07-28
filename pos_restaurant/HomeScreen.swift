//
//  HomeScreen.swift
//  pos_restaurant
//
//  Created by May Yi on 28/07/2024.
//
import Foundation
import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack {
            Spacer()
            Image("company") // Assuming the same logo image
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 240)
            Text("Chinese Resturant in Dubai")
                .font(.headline)
                .padding()
            Text("Chinese Foods, All Asian foods, Cusines")
                .font(.subheadline)
                .padding(.bottom, 50)
            Spacer()
        }
        .padding()
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
