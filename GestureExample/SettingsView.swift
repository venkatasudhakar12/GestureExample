//
//  SettingsView.swift
//  GestureExample
//
//  Created by venkata sudhakar on 26/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    @Binding var showModel : Bool
    @State private var airPlaneMode = false
    @State private var selectedMode = 0
    var notifications = ["Lock screen","Notification Center","Banners"]
    var body: some View {
        
        NavigationView{
            Form{
                Section(header: Text("General")) {
                    Toggle(isOn: $airPlaneMode) {
                        Text("Airplane Mode")
                    }
                    Picker(selection: $selectedMode, label: Text("Notifications")) {
                        ForEach(0..<notifications.count){
                            Text(self.notifications[$0])
                        }
                    }
                }
                Section(header: Text("About")) {
                    HStack{
                        Text("Name")
                        Spacer()
                        Text("iPhone")
                    }
                    HStack{
                       Text("Software Version")
                        Spacer()
                        Text("13.4")
                    }
                    Button(action: {
                        self.showModel.toggle()
                    }) {
                        Text("Dismiss")
                    }
                }
            }
        .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        
        SettingsView(showModel: Binding.constant(false))
            .environment(\.colorScheme, .dark)
    }
}
