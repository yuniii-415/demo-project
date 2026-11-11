//
//  Animation.swift
//  demo project
//
//  Created by T Krobot on 11/11/26.
//

import SwiftUI

struct Animation: View {
    @Namespace private var namespace
    @State private var done = false
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
               
                    
                    
                    if done == false {
                        Text("🪾")
                            .font(.system(size: 400))
                            .multilineTextAlignment(.center)
                            .padding()
                            .matchedGeometryEffect(id: "shape", in: namespace)
                    } else {
                        Text("🌳")
                            .font(.system(size: 400))
                            .multilineTextAlignment(.center)
                            .padding()
                            .matchedGeometryEffect(id: "shape", in: namespace)
                    }
                
                Button {
                    withAnimation {
                        done.toggle()
                    }
                } label: {
                    Text("🍄‍🟫")
                }
                    .padding()
                
                Spacer()
            }
            Spacer()
        }
    }
}

   
#Preview {
    Animation()
}
