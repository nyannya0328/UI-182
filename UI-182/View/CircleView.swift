//
//  CircleView.swift
//  UI-182
//
//  Created by にゃんにゃん丸 on 2021/05/12.
//

import SwiftUI

struct CircleView: View {
    @State var show = false
    var width = UIScreen.main.bounds.width
    var body: some View {
        VStack {
            
            
            
            ZStack{
                
                Color.color
                    .ignoresSafeArea()
                
                Circle()
                    .stroke(Color.green,lineWidth: 80)
                    .frame(width: width * 0.8, height: width * 0.8)
                
                Circle()
                    .stroke(Color.white,style: StrokeStyle(lineWidth: 20,dash: [50,100]))
                    .frame(width: width * 0.8, height: width * 0.8)
                
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .offset(x: -width * 0.4)
                    .rotationEffect(.init(degrees: show ? 360 : 0))
                    .animation(Animation.linear(duration: 8).repeatForever(autoreverses: false))
                    .onAppear(perform: {
                        show.toggle()
                    })
                    
                
                
               
                
                
                    
                
                
            }

        }
        
        
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView()
    }
}

extension Color{
    
    static var color = Color(red: 225/255, green: 225/255, blue: 235/255, opacity: 1)
}
