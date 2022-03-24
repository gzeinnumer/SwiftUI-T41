//
//  ContentView.swift
//  SwiftUI T41
//
//  Created by M Fadli Zein on 25/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var isLoading = true
    
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [Color.purple, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing
            ).ignoresSafeArea()
            
            CardView()
                .redacted(reason: isLoading ? .placeholder : .init())
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                        isLoading = false
                    })
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
