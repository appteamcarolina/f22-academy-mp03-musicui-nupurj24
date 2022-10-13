//
//  ContentView.swift
//  iOS Academy MP03 Music Player
//
//  Created by Nupur Joshi on 10/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var time: Double = 0.00
    var body: some View {
        
        ZStack () {
            (LinearGradient(gradient: Gradient(colors: [.black, .gray]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .edgesIgnoringSafeArea(.all)
            VStack () {
                HStack (spacing: 25) {
                        Text("Queen Bey Playlist")
                            .foregroundColor(.white)
                            .font(.body)
                    }
                Spacer()
                
                VStack {
                    Image("Rennaissance")
                        .resizable()
                        .scaledToFit()
                        .frame(width:250, height: 250, alignment: .center)
                        .cornerRadius(10.0)
                }
                
                .padding(20)
                
                HStack (spacing: 40) {
                    VStack {
                        Text("VIRGO'S GROOVE                            ")
                            .foregroundColor(.white)
                            .font(.title3)
                            .fontWeight(.bold)
                        Text("Beyoncé                                            ")
                            .foregroundColor(.white.opacity(0.7))
                            .font(.body)
                    }
                    VStack {
                        Image(systemName: "heart").foregroundColor(.white)
                            .font(.system(.title2))
                            .frame(width: 50, height: 50)
                    
                    }
                    
                }
                .padding(25)
                VStack{
                    Slider(value: $time, in: 0.00...6.08)
                        .frame(width: 300 )
                }
                .padding(5)
                HStack(spacing: 25) {
                    VStack{
                        Image(systemName: "shuffle").foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                    VStack{
                        Image(systemName: "backward.end.fill").foregroundColor(.white)
                            .font(.system(.title))
                    }
                    VStack{
                        Image(systemName: "pause.circle.fill").foregroundColor(.white)
                            .font(.system(.largeTitle))
                    }
                    VStack{
                        Image(systemName: "forward.end.fill").foregroundColor(.white)
                            .font(.system(.title))
                    }
                    VStack{
                        Image(systemName: "repeat").foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                }
                .padding(50)
                HStack (spacing: 50) {
                    VStack{
                        Image(systemName: "quote.bubble").foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                    VStack{
                        Image(systemName: "airplayaudio").foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                    VStack{
                        Image(systemName: "list.bullet").foregroundColor(.white)
                            .frame(width: 30, height: 30)
                    }
                }
                }
            }
            
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
