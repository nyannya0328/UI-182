//
//  Home.swift
//  UI-182
//
//  Created by にゃんにゃん丸 on 2021/05/12.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            
            Image("p1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width)
            
            
            HStack{
                
                VStack{
                    
                    Text("NEABBY STORES")
                        .foregroundColor(.gray)
                        .offset(x: -30)
                    
                    (
                    
                    
                    Text("目黒店\n")
                        
                        +
                        
                        Text("東京都　品川区　上大崎\n")
                        
                        +
                        
                        Text("2-25-2 新目黒東急ビル")
                    )
                    .font(.headline)
                    .foregroundColor(.primary.opacity(0.8))
                    .padding(.top,15)
                    
                   NavigationLink(
                    destination: CircleView(),
                    label: {
                        
                        
                        Text("もっと見る")
                         .font(.title3)
                         .foregroundColor(.black)
                         .padding(.vertical,8)
                         .padding(.horizontal,15)
                         .background(
                         
                         RoundedRectangle(cornerRadius: 10)
                             .stroke(Color.gray)
                         
                         )
                       
                    })
                       
                    
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading,8)
                    .padding(.top,10)
                    
                    
                
                    
                }
               
                
                MapView()
                    .frame(width: UIScreen.main.bounds.width / 2)
                
               
                
                
            }
            .frame(height: 300)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
