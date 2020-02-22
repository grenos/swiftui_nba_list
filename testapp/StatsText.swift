//
//  StatsText.swift
//  testapp
//
//  Created by Vasilis Green on 4/1/20.
//  Copyright © 2020 Vasilis Green. All rights reserved.
//

import SwiftUI

struct StatsText: View {
  
  var statName: String
  var statValue: String
  
    var body: some View {
      // aligns content inside stack
      HStack(alignment: .center){
        Text(statName + ":")
          .font(.system(size: 30))
          .fontWeight(.bold)
          .padding(.leading)
        
        Text(statValue)
          .font(.system(size: 25))
          .fontWeight(.light)
          .padding(.trailing, 30)
          .foregroundColor(.orange)
        
        Spacer()
      }.minimumScaleFactor(0.2)
    }
}

struct StatsText_Previews: PreviewProvider {
    static var previews: some View {
        StatsText(statName: "attribute", statValue: "value")
    }
}
