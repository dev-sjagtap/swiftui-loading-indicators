//
//  LinearLoadingIndicator.swift
//  swiftui-loading-indicators
//
//  Created by Sushant Jagtap on 03/12/21.
//

import SwiftUI

struct LinearLoadingIndicator: View {
    
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack {
            
            Text("Loading...")
                .font(.system(.body, design: .rounded))
                .bold()
                .offset(x: 0, y: -25)
            
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color(.systemGray5), lineWidth: 3)
                .frame(width: 250, height: 3)
            
            RoundedRectangle(cornerRadius: 3)
                .stroke(Color.green, lineWidth: 3)
                .frame(width: 30, height: 3)
                .offset(x: isLoading ? 110 : -110, y: 0)
                .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
        
        }
        .onAppear() {
            self.isLoading = true
        }
    }
}

struct LinearLoadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        LinearLoadingIndicator()
    }
}
