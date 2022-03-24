//
//  CardView.swift
//  SwiftUI T41
//
//  Created by M Fadli Zein on 25/03/22.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Image(systemName: "person.fill")
                .resizable().aspectRatio(contentMode: .fit)
                .mask(Circle())
                .frame(width: 44, height: 44)
            
            Text("GZeinNumer")
                .font(.title2).bold()
            Text("Design By Zein".uppercased())
                .font(.footnote).bold()
                .foregroundColor(.secondary)
            Text("Hanya text sembarang yang saya ketik, ingatlah zein, jangan ngoding demi uang, enjoylah dengan kodingan mu, dan nikmati uangnya.")
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: 280)
        .background(Color.white)
        .mask(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 40)
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
