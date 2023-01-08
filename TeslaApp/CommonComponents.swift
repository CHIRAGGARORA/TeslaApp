//
//  CommonComponents.swift
//  TeslaApp
//
//  Created by chirag arora on 05/01/23.
//

import Foundation
import SwiftUI


struct GeneralButton: View {
    
    var icon: String
    
    var body: some View {
        Image(systemName: icon)
            .imageScale(.large)
            .frame(width: 44,height: 44)
            .background(Color.white.opacity(0.07))
        
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(Color.white.opacity(0.1),lineWidth: 0.5)
            )
        
        
    }
}



struct CustomDivider: View {
    var body: some View {
        Rectangle()
            .frame(maxWidth: .infinity)
            .frame(height: 0.25)
            .background(Color.white)
            .opacity(0.1)
    }
}



struct ActionButton: View {
    
    var item: ActionItem
    
    var body: some View {
        VStack(spacing: 0){
            
            GeneralButton(icon: item.icon)
            Text(item.text)
                .fontWeight(.semibold)
                .font(.system(size: 12,design: .default))
                .frame(width: 72,height: 30)
                .multilineTextAlignment(.center)
            
        }
    }
}



struct ActionItem: Hashable {
    var icon: String
    var text: String
    
}

struct FullButton: View {
    
    var text: String
    var icon: String = ""
    
    
    var body: some View {
        
        if icon.isEmpty {
            textButton
        }else {
            iconButton
        }
        
        
        
    }
    
    var iconButton: some View {
        Label(text, systemImage: icon)
            .font(.system(size: 14,weight: .medium,design: .default))
            .frame(maxWidth: .infinity)
            .padding()
        
            .background(Color.white.opacity(0.07))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white.opacity(0.1),lineWidth: 0.5)
            )
    }
    
    var textButton: some View {
        Text(text)
            .font(.system(size: 14,weight: .medium,design: .default))
            .frame(maxWidth: .infinity)
            .padding()
        
            .background(Color.white.opacity(0.07))
            .clipShape(RoundedRectangle(cornerRadius: 10))
        
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.white.opacity(0.1),lineWidth: 0.5)
            )
    }
}
