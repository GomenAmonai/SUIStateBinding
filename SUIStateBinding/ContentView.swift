//
//  ContentView.swift
//  SUIStateBinding
//
//  Created by Даниил Ледник on 02.08.2024.
//

import SwiftUI

struct ContentView: View {

 @State private var buttonColor = Color.blue
 
 var body: some View {
  VStack {
   Button("Change Color") {
    // Изменяем цвет кнопки при нажатии
    buttonColor = (buttonColor == Color.blue) ? Color.red : Color.blue
   }
   .padding()
   .background(buttonColor)
   .foregroundColor(.white)
   .cornerRadius(10)
   .animation(.easeInOut, value: buttonColor) // Добавляем анимацию при изменении цвета
  }
 }
}

#Preview {
    ContentView()
}

