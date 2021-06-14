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
                    Spacer()
                    Text("휴대 전화번호")
                        .foregroundColor(Color.init(.systemGray))
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
    @State private var isImageChange: Bool = false
    var body: some View{
        
        VStack(alignment: .center, spacing: 3){
            Button(action: {
                self.isImageChange.toggle()
            }){
                Image(systemName: "person.fill")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    .padding(.all, 10)
                    .overlay(
                        Text("편집")
                            .frame(width: 100, height: 20)
                            .foregroundColor(.white)
                            .background(Color.black)
                        , alignment: .bottom
                    )
                    .background(Color.init(UIColor.systemGray4))
                    .clipShape(Circle())
                    .actionSheet(isPresented: $isImageChange, content: getActionSheet)
                    
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
    
    func getActionSheet() -> ActionSheet{
        let title = Text("선택해주세요.")
        
        let takeImage: ActionSheet.Button = .default(Text("사진 찍기"))
        let chooseImage: ActionSheet.Button = .default(Text("사진 선택"))
        let searching: ActionSheet.Button = .default(Text("탐색..."))
        let cancle: ActionSheet.Button = .cancel(Text("취소"))
        
        return ActionSheet(title: title, buttons: [takeImage,chooseImage,searching,cancle])
    }
}
struct AppleID_Previews: PreviewProvider {
    static var previews: some View {
        AppleID()
    }
}
