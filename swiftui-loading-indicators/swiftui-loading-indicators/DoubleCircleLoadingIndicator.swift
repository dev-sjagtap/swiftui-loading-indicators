//
//  DoubleCircleLoadingIndicator.swift
//  swiftui-loading-indicators
//
//  Created by Sushant Jagtap on 03/12/21.
//

import SwiftUI

struct DoubleCircleLoadingIndicator: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack {
            
            Circle()
                .stroke(Color(.systemGray5), lineWidth: 14)
                .frame(width: 100, height: 100, alignment: .center)
            
            Circle()
                .trim(from: 0, to: 0.2)
                .stroke(Color.green, lineWidth: 7)
                .frame(width: 100, height: 100, alignment: .center)
                .rotationEffect(Angle(degrees: isLoading ? 360 : 0))
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                .onAppear() {
                    self.isLoading = true
                }
        }
        
    }
    
}

struct DoubleCircleLoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        DoubleCircleLoadingIndicator()
    }
}
