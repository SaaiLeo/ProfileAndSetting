//
//  ProfileView.swift
//  ProfileAndSetting
//
//  Created by Austin Xu on 2024/9/12.
//

import SwiftUI

struct ProfileView: View {
    
    @Binding var name: String
    @Binding var job: String
    @Binding var appreciations: Int
    @Binding var followers: Int
    @Binding var contributions: Int
    @Binding var description: String
    
    var body: some View {
            // Drawing the rectangle
        ZStack {
            Path { path in
                //Top left
                path.move(to: CGPoint(x: 0, y: 0))
                path.addLine(to: CGPoint(x: 0, y: UIScreen.main.bounds.height - 320))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: UIScreen.main.bounds.height-320))
                path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
                path.addLine(to: CGPoint(x: 0, y: 0))
            }
            .fill(
                LinearGradient(
                    colors: [Color("red_primary"),
                             Color("red_secondary")
                            ],
                    startPoint: .leading,
                    endPoint: .trailing)
            )
            .edgesIgnoringSafeArea(.top)
            
            // Start Coding here
            VStack(spacing: 30) {
                ZStack{
                    Circle()
                        .foregroundColor(.orange)
                        .frame(width: 160, height: 150, alignment: .center)
                    Image("profile")
                        .resizable()
                        .frame(width: 150, height: 140, alignment: .center)
                        .clipShape(Circle())
                }
                
                Text(name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                
                Text(job)
                    .foregroundStyle(.white)
                
                HStack(spacing: 35){
                    Image(systemName: "heart.circle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                    Image(systemName:"globe")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                    Image(systemName:"bubble.circle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                    Image(systemName:"phone.circle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                }
                
                
                Button {
                    //action
                } label: {
                    Text("Follow")
                        .fontWeight(.bold)
                        .font(.title)
                }.foregroundColor(.orange)
                    .frame(width: 150, height: 50, alignment: .center)
                    .background(.white)
                    .cornerRadius(60)
                    .shadow(color: .orange, radius: 5, x: 0.0, y: 0.0)
                
                HStack(spacing: 30){
                    VStack{
                        Text("\(appreciations)")
                            .foregroundStyle(.orange)
                            .font(.title2)
                        Text("Appreciations")
                            .foregroundStyle(.gray)
                            .font(.caption)
                    }
                    VStack{
                        Text("\(followers)")
                            .foregroundStyle(.orange)
                            .font(.title2)
                        Text("Followers")
                            .foregroundStyle(.gray)
                            .font(.caption)
                    }
                    VStack{
                        Text("\(contributions)")
                            .foregroundStyle(.orange)
                            .font(.title2)
                        Text("Contributions")
                            .foregroundStyle(.gray)
                            .font(.caption)
                    }
                }
                
                Text("About me")
                    .font(.title)
                
                Text(description)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.gray)
                    .padding(.horizontal, 16)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
            
            
        }
            
            
        
    }
}

//struct ProfileView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileView()
//    }
//}
