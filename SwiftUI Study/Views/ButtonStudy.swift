//
//  ContentView.swift
//  SwiftUI Study
//
//  Created by 창민 on 2021/05/24.
//

import SwiftUI

struct ButtonStudy: View {
    @State private var showingAlert = false
    @State private var showingSheet = false
    @State var actionSheetOption: ActionSheetOption = .one
    
    enum ActionSheetOption {
        case one
        case two
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Button("<알림 버튼>"){
                self.showingAlert.toggle()
            }
            .foregroundColor(.white)
            .background(Color.gray)
            .cornerRadius(10)
            .font(.system(size: 30))
            .alert(isPresented: $showingAlert){
                let firstButton = Alert.Button.cancel(Text("확인"))
                let secondButton = Alert.Button.destructive(Text("취소"))
                
                return Alert(title: Text("알림!!"), message: Text("삐용삐용삐용~~~🚨"), primaryButton: firstButton, secondaryButton: secondButton)
            }
            
            Button("<액션 시트 버튼>"){
                self.showingSheet.toggle()
            }
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.system(size: 30))
            .actionSheet(isPresented: $showingSheet, content: getActionSheet)
        }
    }
    
    func getActionSheet() -> ActionSheet {
        let title = Text("액션시트")
        let oneButton: ActionSheet.Button = .default(Text("첫번째 경우 -> 두번째 경우"), action: {
            actionSheetOption = .two
        })
        let twoButton: ActionSheet.Button = .default(Text("두번째 경우 -> 첫번째 경우"), action: {
            actionSheetOption = .one
        })
        let cancelButton: ActionSheet.Button = .cancel(Text("취소"))
        
        switch actionSheetOption{
        case .one:
            return ActionSheet(title: title, message: nil, buttons: [oneButton,cancelButton])
            
        case .two:
            return ActionSheet(title: title, message: nil, buttons: [twoButton,cancelButton])
        }
    }
}

struct ButtonStudy_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStudy()
    }
}
