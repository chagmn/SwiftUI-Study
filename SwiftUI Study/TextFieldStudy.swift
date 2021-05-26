//
//  TextFieldStudy.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/05/26.
//

import SwiftUI

struct TextFieldStudy: View {
    @State private var textFielddata: String = ""
    @State private var withPicker: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            TextField(" 텍스트 필드", text: $textFielddata)
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
                .frame(width: 320, height: 40)
                .background(Color(#colorLiteral(red: 0.8564875722, green: 0.8513966799, blue: 0.8604011536, alpha: 1)))
                .cornerRadius(15)
            
            TextField("Picker와 연동용", text: $withPicker)
                .foregroundColor(.black)
                .frame(width: 150, height: 40)
                
                .cornerRadius(10)
                .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                
        }
    }
}

struct TextFieldStudy_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldStudy()
    }
}
