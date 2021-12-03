//
//  CircleLoadingIndicator.swift
//  swiftui-loading-indicators
//
//  Created by Sushant Jagtap on 03/12/21.
//

import SwiftUI

struct CircleLoadingIndicator: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10.0) {
            
            Circle()
                .trim(from: 0, to: 0.8)
                .stroke(Color.green, lineWidth: 7)
                .frame(width: 100, height: 100, alignment: .center)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(Animation.default.repeatForever(autoreverses: false))
                .onAppear() {
                    self.isLoading = true
                }
            
            Text("Loading...")
                .font(.title)
                .foregroundColor(.green)
        }
        
    }
    
}

struct CircleLoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CircleLoadingIndicator()
    }
}
