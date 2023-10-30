//
//  ContentView.swift
//  ToDoList
//
//  Created by sonthuol on 30/10/2023.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn && !viewModel.currentUserId.isEmpty {
                ToDoListView()
            }else{
                LoginView()
            }
            
        }
    }
}

#Preview {
    MainView()
}
