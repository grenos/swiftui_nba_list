//
//  ContentView.swift
//  testapp
//
//  Created by Vasilis Green on 1/10/19.
//  Copyright © 2019 Vasilis Green. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  var player: Player
  
  //  this is a computed proprty
  //  basically a return in react JSX
  //  you can return something inside it OR
  //  you can implicitly return something
  var body: some View {
    
    VStack(){
      Image(player.team.imageName)
        .resizable()
        .aspectRatio(contentMode: .fit)

      
      Image(player.imageName).clipShape(Circle())
        .background(Circle().foregroundColor(.white))
        .overlay(Circle().stroke(Color.white, lineWidth: 4))
        .offset(x: 0, y: -90)
        .padding(.bottom, -70)
        .shadow(radius: 20)
      
      
      
        Text(player.name)
          .font(.system(size: 40))
          .fontWeight(.heavy)
          .minimumScaleFactor(0.4)
          .lineLimit(1)
          .padding(.leading)
          .padding(.trailing)
      
      
      
      //  Importing another Struct view
      StatsText(statName: "Age", statValue: String(player.age))
      StatsText(statName: "Height", statValue: String(player.height))
      StatsText(statName: "Weight", statValue:String( player.weight) + " lbs")
      //  a spacer is an empty view that takes
      //  as much space as it possibly can
      //  so in this case is pushing everything else up because
      //  it is placed at the end of the stack
      Spacer()
      //  push content over the safe area
    }.edgesIgnoringSafeArea(.all)
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    
    Group{
      ContentView(player: players[2]).environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone 8")
      
      ContentView(player: players[2]).environment(\.sizeCategory, .extraSmall).previewDevice("iPhone SE")
      
      ContentView(player: players[2]).previewDevice("iPhone Xs")
      ContentView(player: players[2]).previewDevice("iPhone 11 Pro Max")
    }
    
 
  }
}
