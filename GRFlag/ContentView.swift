//
//  ContentView.swift
//  GRFlag
//
//  Created by Angelos Staboulis on 30/12/23.
//

import SwiftUI

struct ContentView: View {
    let startDate = Date()

    var body: some View {
        VStack(alignment:.center){
            HStack{
                Text("Animation in SwiftUI").font(.largeTitle)
            }
            HStack{
                Text("with Metal Shaders")
            }
            
        }
        Spacer()
        TimelineView(.animation){ content in
            Image("grflag")
                .frame(width:300,height:200)
                .visualEffect { context, geometryProxy in
                    context.distortionEffect(ShaderLibrary.wave(.float(startDate.timeIntervalSinceNow)), maxSampleOffset: .zero)
                }
        }
       Spacer()

    }
}
#Preview {
    ContentView()
}
