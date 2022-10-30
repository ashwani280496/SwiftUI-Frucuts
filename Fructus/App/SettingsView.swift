//
//  SettingsView.swift
//  Fructus
//
//  Created by Ashwani Kumar on 30/10/22.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20.0) {
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider()
                        
                        HStack{
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(8)
                                .frame(width: 80, height: 80, alignment: .leading)
                            
                            Text("sdgds s hssfh s sdfgh hshgfh hdsh gfh sh dfgh  dfghgdfh dh dfgh dgh dyh dfgh dfgh dfgh g hcvg hgh gfdh dfghfg hfg hfgd hdfg hfgd hfgdhfdg hgfsh rdhdfg hdfghfg hfgh dfgh fgd hgf dfg")
                                .font(.footnote)
                        }
                    }
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                ToolbarItem {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                }
            })
            .padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
