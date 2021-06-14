//
//  AppleID.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/06/11.
//

import SwiftUI

struct AppleID: View {
    var body: some View {
        List {
            
            Section(header: header()){
                NavigationLink(destination: destination_example() ){
                    Text("이름, 전화번호, 이메일")
                    
                }

                NavigationLink(destination: destination_example() ){
                    Text("암호 및 보안")
                }
                NavigationLink(destination: destination_example() ){
                    Text("결제 및 배송")
                }
                NavigationLink(destination: destination_example() ){
                    Text("구독")
                }
            }
            
            Section {
                NavigationLink(destination: destination_example() ){
                    Text("iCloud")
                }
                NavigationLink(destination: destination_example() ){
                    Text("미디어 및 구입 항목")
                }
            }
            
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Apple ID", displayMode: .inline)
    }
}

struct destination_example: View{
    var body: some View{
        Text("example")
    }
}

struct header: View{
    var body: some View{
        
        VStack(alignment: .center, spacing: 3){
            Button(action: {
                
            }){
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 80, height: 80)
            }
            
            Text("이사과")
                .bold()
                .font(.title)
                .foregroundColor(.black)
            
            Text("apple@naver.com")
                .font(.subheadline)
                
        }
        .padding([.top,.bottom], 10)
        .frame(width: UIScreen.main.bounds.width,alignment: .center)
    }
    
}
struct AppleID_Previews: PreviewProvider {
    static var previews: some View {
        AppleID()
    }
}
