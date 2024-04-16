//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Rohan on 4/15/24.
//

import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = []
    
    var body: some View {
        NavigationStack {
            List(videos){ video in
                HStack {
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90.0)
                        .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                    
                    Spacer().frame(width: 16)
                    
                    VStack(alignment: .leading) {
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                            .minimumScaleFactor(0.75)
                        
                        Spacer().frame(height: 5)
                        
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }.navigationTitle("Sean's Videos")
        }
    }
}

#Preview {
    ContentView(videos: VideoList.topTwelve)
}
