//
//  TextFieldStudy.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/05/26.
//

import SwiftUI

struct TextFieldStudy: View {
    @State private var textFielddata: String = ""
    @State private var keyboardText: String = ""

    
    var numberFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            
            Text("\(textFielddata)")
                .frame(width: 320, height: 40)
                .background(Color.init(.systemGray6))
            
            TextField(" 텍스트 필드", text: $textFielddata)
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
                .frame(width: 320, height: 40)
                .background(Color(#colorLiteral(red: 0.8564875722, green: 0.8513966799, blue: 0.8604011536, alpha: 1)))
                .cornerRadius(15)
            
            
            // formatter를 설정해서 숫자를 표시할 수도 있음.
            TextField("키보드", value: $keyboardText, formatter: numberFormatter)
                .foregroundColor(.black)
                .frame(width: 320, height: 40)
                .cornerRadius(10)
                .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                .keyboardType(.numberPad) // 이걸로 상황에 따라 키보드 형태를 바꿀 수 있음
            
            // .numberPad 경우 리턴버튼이 없어서 키보드를 못내리는데 이때 이 버튼을 이용해서
            // 키보드를 내릴 수 있음.
            Button("키보드 내리기"){
                self.hideKeyboard()
            }
        }
    }
}

struct TextFieldStudy_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStudy()
    }
}

extension View{
    // 키보드 내리는 함수
    func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
