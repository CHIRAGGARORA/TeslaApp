//
//  CarControlsView.swift
//  TeslaApp
//
//  Created by chirag arora on 05/01/23.
//

import SwiftUI

struct CarControlsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    
    
    var body: some View {
        
        
        
        ScrollView {
            VStack(spacing: 15){
                VStack(alignment: .leading,spacing: 15) {
                    HStack {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            GeneralButton(icon: "chevron.left")
                        }
                        Spacer()
                    }
                    Text("Car Controls")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                }
                
                CustomDivider()
                CarLockButton()
                CustomDivider()
                CarControlsSubView()
                CustomDivider()
                CustomDivider()
                ValetSection()
                
                
                
                
                
                
            }
            .padding()
            
            
            
            
            
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color("DarkGray"))
        .foregroundColor(Color.white)
        .navigationTitle("Mach Five")
        .navigationBarHidden(true)
        
    }
}

struct CarControlsView_Previews: PreviewProvider {
    static var previews: some View {
        CarControlsView()
        
    }
}

struct CarLockButton: View {
    var body: some View {
        Button(action: {}) {
            FullButton(text: "Unlock Car",icon: "lock.fill")


        }
    }
}

struct CarControlsSubView: View {
    var body: some View {
        VStack(alignment: .center,spacing: 10) {
            HStack(alignment: .center,spacing: 30) {
                
                ActionButton(item: ActionItem(icon: "flashlight.on.fill", text: "Flash"))
                ActionButton(item: ActionItem(icon: "speaker.wave.3.fill", text: "Honk"))
                ActionButton(item: ActionItem(icon: "key.fill", text: "Start"))
            }
            HStack (alignment: .center,spacing: 40){
                
                ActionButton(item: ActionItem(icon: "arrow.up.bin", text: "Front Trunk"))
                ActionButton(item: ActionItem(icon: "arrow.up.square", text: "Trunk"))
                
            }
        }
        .padding(.top)
    }
}

struct ValetSection: View {
    
    @State public var toggleValet: Bool = false
    var body: some View {
        HStack {
            Text("Valet Mode")
                .fontWeight(.semibold)
            Spacer()
            Toggle("", isOn: $toggleValet)
            
            
            
            
        }
    }
}
