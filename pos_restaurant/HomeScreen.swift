import SwiftUI

struct HomeScreen: View {
    @State private var showLogin = false
    
    var body: some View {
        NavigationView {
            VStack {
//                Spacer()
                Image("company")
                    .resizable()
//                    .scaledToFit()
                    .frame(width: 300, height: 130)
                    .padding(.bottom, 0)
                    .padding(.top, 0)
                    .cornerRadius(10.0)
                
                Image("foods")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                    .padding(.top, -30)
                    .padding(.bottom, 0)
                Text("Fuso Chinese Restaurant")
                    .font(.headline)
                    .padding(.top,0)
                    .padding(.bottom, 10)
                Text("Asian noddles, Cusines and Salads")
                    .font(.subheadline)
                    .padding(.bottom, 10)
                Spacer()
                
                NavigationLink(destination: ContentView(), isActive: $showLogin) {
                    Button(action: {
                        self.showLogin = true
                    }) {
                        Text("Login")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 220, height: 50)
                            .background(Color.orange)
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

