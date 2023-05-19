//
//  OnboardingView.swift
//  Fructus
//
//  Created by Abdelrahman Shehab on 05/04/2023.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: -  PROPERTY
    var fruits: [Fruit] = fruitsData
    
    // MARK: -  BODY
    var body: some View {
        TabView {
            ForEach(fruits[1...5]) { item in
                FruitCardView(fruit: item)
                
            }
        }//: TAP
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}
// MARK: -  PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
