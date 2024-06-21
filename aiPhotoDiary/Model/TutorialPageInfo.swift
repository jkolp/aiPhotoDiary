//
//  TutorialPage.swift
//  aiPhotoDiary
//
//  Created by Jasper on 6/9/24.
//

import Foundation

struct TutorialPageInfo: Identifiable, Equatable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
}

let tutorialPageInfos = [
    TutorialPageInfo(title: "Start Recording Your Memories",
                 description: "Create your very own picture diary!",
                 imageName: "tutorial_img1"),
    
    TutorialPageInfo(title: "Attach A Photo",
                 description: "Look back at your photos to re-live the moments.",
                 imageName: "tutorial_img2"),
    
    TutorialPageInfo(title: "Or Generate One With AI!",
                 description: "If you forgot to take a photo, generate one with our AI!",
                 imageName: "tutorial_img3"),
    
    TutorialPageInfo(title: "Watch How You Grow Over Time",
                 description: "Find out how you develope over time.",
                 imageName: "tutorial_img4")
]


