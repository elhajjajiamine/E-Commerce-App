//
//  Home.swift
//  E Commerce App
//
//  Created by elhajjaji on 21/4/2021.
//

import SwiftUI

struct Home: View {
    @State var selected = tabs[0]
    @Namespace var animation
    
    var body: some View {
        VStack {
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                  Image(systemName: "line.horizontal.3.decrease")
                    .font(.system(size:25 ,weight:.heavy))
                    .foregroundColor(.black)
                })
                Spacer(minLength: 0)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 45, height: 45)
                        .cornerRadius(15)
                })
            }
            .padding(.vertical,10)
            .padding(.horizontal)
            
            ScrollView{
                VStack{
                    HStack{
                        VStack(alignment: .leading, spacing: 5, content: {
                            Text("Let's")
                                .font(.title)
                                .foregroundColor(.black)
                            
                            Text("Get Started")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundColor(.black)
                        })
                        .padding(.horizontal)
                        Spacer(minLength: 0)
                    }
                    
                    HStack(spacing:0){
                        ForEach(tabs,id:\.self){tab in
                            //Tab Button
                            TabButon(title: tab, selected: $selected, animation: animation)
                            // even spacing
                            if tabs.last != tab{Spacer(minLength: 0)}
                        }
                    }
                    .padding()
                    .padding(.top,5)
                }
            }
            
            Spacer(minLength:0)
        }
        .background(Color.white.ignoresSafeArea())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}


//Tabs

var tabs = ["Glasses","Watched","Shoes","Perfume"]
