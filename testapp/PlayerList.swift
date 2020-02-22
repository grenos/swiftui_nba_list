//
//  PlayerList.swift
//  testapp
//
//  Created by Vasilis Green on 4/1/20.
//  Copyright © 2020 Vasilis Green. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    var body: some View {
      
      NavigationView{
        
        // pass the players array from the Playerfile
        List(players){
          currentPlayer in
          
          NavigationLink(destination: ContentView(player: currentPlayer)){
            PlayerRow(player: currentPlayer)
              .frame(height: 60)
          }
       
        }.navigationBarTitle(Text("NBA Finals Players"))
        
      }
        

    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        
      Group{
         PlayerList().environment(\.sizeCategory, .extraExtraExtraLarge).previewDevice("iPhone 8")
         PlayerList().environment(\.sizeCategory, .extraSmall).previewDevice("iPhone SE")
         PlayerList().previewDevice("iPhone Xs")
         PlayerList().previewDevice("iPhone 11 Pro Max")
       }
    }
}
