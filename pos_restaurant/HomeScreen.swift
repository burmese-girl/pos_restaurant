import SwiftUI

struct HomeScreen: View {
    @State private var showLogin = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Image("company")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 220)
                Text("Fuso Chinese Restaurant")
                    .font(.headline)
                    .padding()
                Text("Asian noddles, Cusines and Salads")
                    .font(.subheadline)
                    .padding(.bottom, 50)
                Spacer()
                NavigationLink(destination: ContentView(), isActive: $showLogin) {
                    Button(action: {
                        self.showLogin = true
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
            }
            .padding()
            .background(Color.white.edgesIgnoringSafeArea(.all))
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

