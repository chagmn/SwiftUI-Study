//
//  Wifi.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/06/14.
//

import SwiftUI

struct Wifi: View {
    @State private var isWifiOn: Bool = true
    
    let footer1: Text = Text("알고 있는 네트워크에 자동으로 연결됩니다. 사용 가능한 알고 있는 네트워크가 없다면, 네트워크에 수동으로 연결해야 합니다.")
    
    let footer2: Text = Text("사용 가능한 Wi-Fi 네트워크가 없을 때 이 기기가 자동으로 근처 개인용 핫스팟을 찾도록 허용합니다.")
    
    let footer3: Text = Text("Apple Watch로 잠금 해제하거나 AirDrop, AirPlay 및 더 정확한 위치 서비스를 사용하려면 Wi-Fi가 필요합니다.")
    
    var body: some View {
        List{
            if isWifiOn{
                Section{
                    HStack{
                        Image(systemName: "checkmark")
                        Text("Wi-Fi")
                        Spacer()
                        Toggle("11", isOn: $isWifiOn)
                            .labelsHidden()
                    }
                    HStack{
                        Image(systemName: "")
                        Text("Wi-Fi")
                        Spacer()
                        Toggle("11", isOn: $isWifiOn)
                            .labelsHidden()
                    }
                }
                
                Section(header: wifiSearchingView() ){
                    HStack{
                        Text("기타...")
                            .padding(.leading, 25)
                    }
                }
                
                Section(footer: footer1){
                    NavigationLink(destination: linkExample()){
                        HStack{
                            Text("네트워크 연결 요청")
                            Spacer()
                            Text("끔")
                        }
                    }
                }
                
                Section(footer: footer2){
                    NavigationLink(destination: linkExample()){
                        HStack{
                            Text("핫스팟 자동 연결")
                            Spacer()
                            Text("안 함")
                        }
                    }
                }
            }
            else {
                Section(footer: footer3){
                    HStack{
                        Text("Wi-Fi")
                        Spacer()
                        Toggle("toggle", isOn: $isWifiOn)
                            .labelsHidden()
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Wi-Fi", displayMode: .inline)
    }
}

struct linkExample: View{
    var body: some View{
        Text("example")
    }
}

struct wifiSearchingView: View {
    @State private var progree: Double = 0.0
    var body: some View{
        HStack(spacing: 5){
            Text("네트워크")
            ProgressView(value: progree)
                .progressViewStyle(CircularProgressViewStyle())
        }
    }
}
struct Wifi_Previews: PreviewProvider {
    static var previews: some View {
        Wifi()
    }
}
