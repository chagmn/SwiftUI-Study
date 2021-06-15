//
//  Setting.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/06/11.
//

import SwiftUI

struct Setting: View {    
    var body: some View {
        NavigationView{
            List{
                Section{
                    NavigationLink(destination: AppleID()){
                        HStack(spacing: 20){
                            Image(systemName: "person.fill")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .aspectRatio(contentMode: .fill)
                                .foregroundColor(.white)
                                .padding(.top, 15)
                                .background(Color.init(UIColor.systemGray3))
                                .clipShape(Circle())
                            
                            
                            VStack(alignment: .leading, spacing: 5){
                                Text("이사과")
                                    .font(.title)
                                Text("Apple ID, iCloud, 미디어 및 구입")
                                    .font(.footnote)
                            }
                        }
                    }
                }
                
                Section{
                    Setting_ONE()
                }
                
                Section{
                    Setting_TWO()
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("설정")
        }
    }
}

struct Setting_ONE: View{
    @State private var isAirplaneModeON: Bool = false
    
    let lists = ["wifi", "bluetooth"]
    
    var body: some View{
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
            NavigationLink(
                destination: Wifi()){
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
        
        HStack{
            // 블루투스 이미지
            Image(systemName: "bluetooth")
                .resizable()
                .foregroundColor(.white)
                .padding(.all, 7)
                .background(Color.init(UIColor.systemBlue))
                .frame(width: 32, height: 32)
                .cornerRadius(5)
            
            Text("Bluetooth")
            
            Spacer()
        }
        
        HStack{
            Image(systemName: "antenna.radiowaves.left.and.right")
                .resizable()
                .foregroundColor(.white)
                .padding(.all, 7)
                .background(Color.init(UIColor.systemGreen))
                .frame(width: 32, height: 32)
                .cornerRadius(5)
            
            Text("셀룰러")
            
            Spacer()
        }
        
        HStack{
            Image(systemName: "personalhotspot")
                .resizable()
                .foregroundColor(.white)
                .padding(.all, 7)
                .background(Color.init(UIColor.systemGreen))
                .frame(width: 32, height: 32)
                .cornerRadius(5)
            
            Text("개인용 핫스팟")
            
            Spacer()
        }
        
        HStack{
            Image(systemName: "antenna.radiowaves.left.and.right")
                .resizable()
                .foregroundColor(.white)
                .padding(.all, 7)
                .background(Color.init(UIColor.systemBlue))
                .frame(width: 32, height: 32)
                .cornerRadius(5)
            
            Text("VPN")
            
            Spacer()
        }
        
    }
}

struct Setting_TWO: View {
    
    var body: some View{
        HStack{
            Text("!1")
        }
    }
}



struct Setting_Previews: PreviewProvider {
    static var previews: some View {
        Setting()
    }
}

