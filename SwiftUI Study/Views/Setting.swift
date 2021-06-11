//
//  Setting.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/06/11.
//

import SwiftUI

struct Setting: View {
    @State private var isAirplaneModeON: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    HStack(spacing: 20){
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .aspectRatio(contentMode: .fill)
                        
                        VStack(alignment: .leading){
                            Text("이름")
                                .font(.title2)
                            Text("Apple ID, iCloud, 미디어 및 구입")
                                .font(.footnote)
                        }
                    }
                }
                
                Section{
                    HStack{
                        Image(systemName: "airplane")
                            .resizable()
                            .foregroundColor(.white)
                            .padding(.all, 7)
                            .background(Color.init(UIColor.systemOrange))
                            .frame(width: 32, height: 32)
                            .cornerRadius(5)
                        
                        Text("에어플레인 모드")
                        
                        Spacer()
                        
                        Toggle("aa", isOn: $isAirplaneModeON)
                            .labelsHidden()
                    }
                    
                    HStack{
                        Image(systemName: "wifi")
                            .resizable()
                            .foregroundColor(.white)
                            .padding(.all, 7)
                            .background(Color.init(UIColor.systemBlue))
                            .frame(width: 32, height: 32)
                            .cornerRadius(5)
                        
                        Text("Wi-Fi")
                        
                        Spacer()
                        
                        
                    }
                    

                }
            }
            .listStyle(GroupedListStyle())
            
            .navigationTitle("설정")
        }
    }
}

struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}
