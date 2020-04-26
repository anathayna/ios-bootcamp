    //
    //  StoryBrain.swift
    //  Destini-iOS13
    //
    //  Created by Angela Yu on 08/08/2019.
    //  Copyright © 2019 The App Brewery. All rights reserved.
    //
    
    import Foundation
    
    struct StoryBrain {
        
        var storyNumber = 0
        
        let stories = [
            Story(
                title: "Seu carro furou um pneu em uma estrada sinuosa no meio do nada, sem sinal de celular. Você decide pegar carona. Uma caminhonete enferrujada para ao seu lado. Um homem com um chapéu de abas largas e olhos sem alma abre a porta do passageiro e pergunta: 'Precisa de uma carona?'.",
                choice1: "Preciso sim. Obrigado pela ajuda!", choice1Destination: 2,
                choice2: "Melhor perguntar se ele é um assassino primeiro.", choice2Destination: 1
            ),
            Story(
                title: "Ele assente lentamente, imperturbável com a pergunta.",
                choice1: "Pelo menos ele é honesto. Eu vou subir.", choice1Destination: 2,
                choice2: "Espera, eu sei trocar um pneu.", choice2Destination: 3
            ),
            Story(
                title: "Quando ele começa a dirigir, o estranho começa a falar sobre o relacionamento dele com a mãe. Ele fica cada vez mais irritado a cada minuto. Ele pede para você abrir o porta-luvas. Dentro, você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John. Você pega do porta-luvas...",
                choice1: "Eu amo Elton John! Entrega a fita cassete.", choice1Destination: 5,
                choice2: "Sou ele ou eu! Você pega a faca e o esfaqueia", choice2Destination: 4
            ),
            Story(
                title: "O que? Que policial! Você sabia que os acidentes de trânsito são a segunda principal causa de morte acidental na maioria dos adultos?",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "Ao atravessar o corrimão e seguir em direção às rochas irregulares abaixo, você reflete sobre a duvidosa sabedoria de esfaquear alguém enquanto ele dirige um carro em que você está.",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            ),
            Story(
                title: "Você se liga ao assassino enquanto canta versos de 'Can You Feel The Love Tonight?'. Ele deixa você na próxima cidade. Antes de você ir, ele pergunta se você conhece bons lugares para despejar corpos. Você responde: 'Experimente o píer'.",
                choice1: "The", choice1Destination: 0,
                choice2: "End", choice2Destination: 0
            )
        ]
        
        func getStoryTitle() -> String {
            return stories[storyNumber].title
        }
        
        func getChoice1() -> String {
            return stories[storyNumber].choice1
        }
        
        func getChoice2() -> String {
            return stories[storyNumber].choice2
        }
        
        mutating func nextStory(userChoice: String) {
            
            let currentStory = stories[storyNumber]
            if userChoice == currentStory.choice1 {
                storyNumber = currentStory.choice1Destination
            } else if userChoice == currentStory.choice2 {
                storyNumber = currentStory.choice2Destination
            }
        }
        
    }
    
    
