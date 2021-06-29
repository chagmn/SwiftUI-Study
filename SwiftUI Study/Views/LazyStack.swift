//
//  LazyStack.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/06/29.
//

import SwiftUI

struct LazyStack: View {
    var body: some View {
        HStack{
            // 너비가 글자 끝나는 지점이 끝.
            ScrollView{
                VStack{
                    ForEach(1...100, id: \.self) {
                        Text("\($0)번째")
                    }
                }
            }
            
            // LazyVStack은 너비가 여유롭다.
            ScrollView{
                LazyVStack {
                    ForEach(1...100, id: \.self) {
                        Text("\($0)번째")
                    }
                }
            }
        }
    }
}

struct LazyStack_Previews: PreviewProvider {
    static var previews: some View {
        LazyStack()
    }
}
