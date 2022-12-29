//
//  MyTextView.swift
//  SwiftUI_tutorial_#1
//
//  Created by rain ing on 2022/12/22.
//  Copyright © 2022 Tuentuenna. All rights reserved.
//

import SwiftUI

struct MyTextView: View {
    
        //데이터를 연동시킨다.
//    @Binding
//    var isActivated: Bool
//        //생성자
//    init(isActivated: Binding<Bool> = .constant(false))
//    {
//        _isActivated = isActivated
//        }
//
    @State var index: Int
    
    //배경ㅇ색 배열 준비
    let colors = [
        Color.red,
        Color.blue,
        Color.orange,
        Color.green,
        Color.yellow,
    ]
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("배경123 아이템 인덱스 \(self.index + 1)")
                .font(.system(size: 30))
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            
//            Text("활성화상태: \(String(isActivated))")
//                .font(.system(size: 30))
//                .foregroundColor(self.isActivated ? Color.yellow : Color.green)
//                .fontWeight(.bold)
            
            Spacer()
        }
        .background(colors[index])
            .onTapGesture {
                if(self.index == self.colors.count - 1){
                    self.index = 0
                } else {
                    self.index += 1
                }
        }
            .edgesIgnoringSafeArea(.all)
            
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


