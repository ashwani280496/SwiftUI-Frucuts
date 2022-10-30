//
//  SettingsView.swift
//  Fructus
//
//  Created by Ashwani Kumar on 30/10/22.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnbaording: Bool = true

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
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider()
                        
                        Text("sdgds s hssfh s sdfgh hshgfh hdsh gfh sh dfgh  dfghgdfh dh dfgh dgh dyh dfgh dfgh dfgh g hcvg hgh gfdh dfghfg hfg hfgd hdfg hfgd hfgdhfdg hgfsh rdhdfg hdfghfg hfgh dfgh fgd hgf dfg")
                            .font(.footnote)
                            .layoutPriority(1)
                        
                            Toggle(isOn: $isOnbaording) {
                                if isOnbaording {
                                    Text("RESTARTED")
                                        .fontWeight(.bold)
                                    .foregroundColor(.green)
                                } else {
                                    Text("RESTART")
                                        .fontWeight(.bold)
                                        .foregroundColor(.secondary)
                                }
                            }
                            .padding()
                            .background(
                                Color(UIColor.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
                            )
                    }
                    
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        
                        SettingRow(property: "Developer", value: "John/Jane")
                        SettingRow(property: "Desinger", value: "Ashwani Shakya")
                        SettingRow(property: "Compatibility", value: "iOS 14")
                        
                        SettingRow(property: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingRow(property: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        
                        SettingRow(property: "SwiftUI", value: "2.0")
                        SettingRow(property: "Version", value: "1.1.0")
                    
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
