//
//  ContentView.swift
//  PlannedTime
//
//  Created by found on 02/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            

        TelaPrincipal()

            .tabItem {
                Image("Calendar1")
            }
            
            NavigationView {
                TelaPrincipal() // CronogramaView
            }
            .tabItem {
                Image("Create1")
            }
            
            NavigationView {
                TelaCronogramas() // BuscaCursosView
            }
            .tabItem {
                Image("Folder1")
            }
            
        }
    }
}


#Preview {
    ContentView()
}
