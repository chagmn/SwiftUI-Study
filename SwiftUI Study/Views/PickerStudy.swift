//
//  PickerStudy.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/06/08.
//

import SwiftUI

struct PickerStudy: View {
    let products = ["아이패드", "아이폰", "애플워치", "맥", "에어팟"]
    enum OS: String {
        case iOS
        case iPadOS
        case MacOS
        case watchOS
        case tvOS
    }
    let percentages  = [10,25,50,75,100]
    
    @State private var productSelected = "여기에 출력됩니다."
    @State private var osSelected = OS.iOS
    @State private var percentage = 0
    
    var body: some View {
        VStack{
            
            Picker("제품 고르시오.", selection: $productSelected){
                ForEach(products, id:\.self){
                    Text("\($0)")
                }
            }.pickerStyle(SegmentedPickerStyle())
            Text("\(productSelected)")
                .frame(width: 300, height: 40)
                .background(Color.init(UIColor.systemGray2))
            
            Picker("OS 고르시오", selection: $osSelected){
                Text("iOS 15").tag(OS.iOS)
                Text("iPadOS 15").tag(OS.iPadOS)
                Text("MaxOS 11").tag(OS.MacOS)
                Text("watchOS 8").tag(OS.MacOS)
                Text("tvOS").tag(OS.MacOS)
            }
            Text("\(osSelected.rawValue)")
                .frame(width: 300, height: 40)
                .background(Color.init(UIColor.systemGray2))
            
            NavigationView{
                Form{
                    Section(header: Text("Percentage 고르기")){
                        Picker("퍼센트", selection: $percentage){
                            ForEach(0..<percentages.count){
                                Text("\(self.percentages[$0])%")
                            }
                        }
                    }.textCase(nil)
                    Section(header: Text("Segmented Style")){
                        Picker("퍼센트", selection: $percentage){
                            ForEach(0..<percentages.count){
                                Text("\(self.percentages[$0])%")
                            }
                        }.pickerStyle(SegmentedPickerStyle())
                    }.textCase(nil)
                }
                .navigationTitle("대충 네비게이션 타이틀..")
            }
        }
    }
}

struct PickerStudy_Previews: PreviewProvider {
    static var previews: some View {
        PickerStudy()
    }
}
