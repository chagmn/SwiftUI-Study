//
//  ListStudy.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/06/07.
//

import SwiftUI

struct ListStudy: View {
    @State var select = Set<UUID>()
    
    @State var one: [String] = ["가", "나", "다", "라"]
    var two: [String] = ["마", "바", "사","아","자"]
    
    var body: some View {
        let titles: [String] = ["1st Section", "2nd Section"]
        let data = [one, two]
        
        NavigationView{
            List(selection: $select) {
                ForEach(one, id: \.self){ value in
                    if value == "다" {
                        Text("\(value)!!!")
                    }
                    Text("\(value) 리스트")
                }
                .onDelete(perform: removeList)
                .onMove(perform: moveList)
                ForEach(data.indices) { index in
                    Section(header: Text(titles[index]), footer: HStack{Spacer();Text("\(data[index].count)개")})
                    {
                        ForEach(data[index], id: \.self){
                            Text($0)
                        }
                    }
                }
            }.listStyle(GroupedListStyle())
            // .listStyle(InsetGroupedListStyle())
            // .listStyle(SidebarListStyle())
            .navigationTitle("Title")
            .toolbar{
                EditButton()
            }
        }
    }
    func removeList(at offset: IndexSet){
        one.remove(atOffsets: offset)
    }
    
    func moveList(from source: IndexSet, to direction: Int){
        one.move(fromOffsets: source, toOffset: direction)
    }
}

struct ListStudy_Previews: PreviewProvider {
    static var previews: some View {
        ListStudy()
    }
}
