//
//  ContentView.swift
//  GestureExample
//
//  Created by venkata sudhakar on 26/05/20.
//  Copyright © 2020 venkata sudhakar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State private var showModel = false
    var body: some View {
        Button(action: {
            self.showModel.toggle()
        }) {
            Text("Show model")
        }.sheet(isPresented: $showModel) {
            Animation()
           // SettingsView(showModel: self.$showModel)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
