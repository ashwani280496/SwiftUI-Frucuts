//
//  SettingRow.swift
//  Fructus
//
//  Created by Ashwani Kumar on 30/10/22.
//

import SwiftUI

struct SettingRow: View {
    var property: String
    var value: String?
    var linkLabel: String?
    var linkDestination: String?
    
    var body: some View {
        VStack {
            Divider()
            HStack{
                Text(property)
                    .foregroundColor(.gray)
                Spacer()
                if value != nil {
                    Text(value!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination ?? "")")!)
                    
                    Image(systemName: "arrow.up.forward.square").foregroundColor(.pink)
                    
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRow(property: "Developer", value: "John/Jane")
                .previewLayout(.sizeThatFits)
            .padding()
            
            SettingRow(property: "Abc", linkLabel: "Web", linkDestination: "http:").previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
