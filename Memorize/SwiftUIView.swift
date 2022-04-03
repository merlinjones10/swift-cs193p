//
//  SwiftUIView.swift
//  Memorize
//
//  Created by Merlin Jones on 03/04/2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        HStack { ZStack (content: {
            RoundedRectangle(cornerRadius: 10).stroke().padding()
            Text("0")
        })}
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
