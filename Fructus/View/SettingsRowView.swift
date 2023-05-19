//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Abdelrahman Shehab on 06/04/2023.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: -  PROPERTY
    
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    // MARK: -  BODY
    var body: some View {
        
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(destination: URL(string: "http://\(linkDestination!)")!) {
                        Text(linkLabel!)
                    }
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}
// MARK: -  PREVIEW

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer",content: "Shehab")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
            SettingsRowView(name: "Webstie", linkLabel: "SwiftUI", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            
        }
        
    }
}
