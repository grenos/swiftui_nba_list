//
//  PlayerRow.swift
//  testapp
//
//  Created by Vasilis Green on 4/1/20.
//  Copyright © 2020 Vasilis Green. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
  
  var player: Player
  
    var body: some View {
      HStack {
        Image(player.imageName)
          .resizable()
          .aspectRatio(contentMode:.fit)
        .clipShape(Circle())
        .background(Circle()
          .foregroundColor(player.team.color))
        
        Text(player.name).font(.title).lineLimit(1).minimumScaleFactor(0.1)
        
      }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
      PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
    }
}
