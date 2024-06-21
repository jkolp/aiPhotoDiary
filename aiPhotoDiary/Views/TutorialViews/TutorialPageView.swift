//
//  TutorialPageView.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/17/24.
//

import SwiftUI

struct TutorialPageView: View {
    
    let pageInfo : TutorialPageInfo

    
    var body: some View {
            VStack (alignment: .center){
                Text(pageInfo.title)
                    .font(.system(size: 28, weight: .bold))

                Image(pageInfo.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Text(pageInfo.description)
                    .font(.system(size: 20))
                    .padding(.bottom, 80)
            }
            .frame(maxWidth: .infinity)
//            6
    }
}

#Preview {
    TutorialPageView(pageInfo: TutorialPageInfo(title: "Start Recording Your Memories",
                                                        description: "Create your very own picture diary!",
                                                        imageName: "tutorial_img1"))
}
