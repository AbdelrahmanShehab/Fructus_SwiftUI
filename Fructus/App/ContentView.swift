//
//  ContentView.swift
//  Fructus
//
//  Created by Abdelrahman Shehab on 05/04/2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: -  PROPERTY
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData

    // MARK: -  BODY
    var body: some View {

        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        
                        FruitRowView(fruit: item)
                            .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }) //: Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
            )
            
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())

    }
}
// MARK: -  PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
