//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Jeff Jeong on 2020/06/30.
//  Copyright © 2020 Tuentuenna. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //@State 값이 변화를 감지 한다.---> 뷰에 적용
    @State var isActivated: Bool = false

    
    // 몸체
    var body: some View {
        NavigationView{
            
        VStack{
            HStack{
                   MyVstackView(isActivated: $isActivated)
                MyVstackView(isActivated: $isActivated)
                MyVstackView(isActivated: $isActivated)

               } // Hstack
               .padding(isActivated ? 50 : 10)
                   .background(isActivated ? Color.yellow : Color.black)

                   .onTapGesture {
                       print("HStack 이 클릭되였다.")
                       //애니메이션과 함께 . withAnimation{}
                       withAnimation{
                           //toggle true이면 false로 , false이면 true
                           self.isActivated.toggle()
                       }

               }

            //네이비 게이션 버튼(링크)
                NavigationLink(destination:
                    MyTextView(index: 1)
                     ) {
                            Text("네비게이션")
                                .font(.system(size: 50))
                                .foregroundColor(.white)
                                .fontWeight(.bold)
                                .padding()
                                .background(Color.orange)
                                .cornerRadius(30)
                } .padding(.top, 50)
            }
        
        } //NaviagtionView
       
    }
}

struct MyListView: View {
    var body: some View {

        NavigationView{
            List(0..<4){ index in
                NavigationLink(destination: MyTextView(index: index) ){
                    Text("아이템 \(index+1)")
                }
            }
        }
        .navigationBarTitle("네비게이션", displayMode: .large)
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
    
    }
}


