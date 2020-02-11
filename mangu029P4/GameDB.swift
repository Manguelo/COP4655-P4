import UIKit

struct Question {
    var question: String?
    var answer: String?
}

class GameDB {
    
    static let shared = GameDB()
    
    var questions: [Question] = []
    var currentQuestion: Int = 0
    var playCount: Int = 0
    var returnedAnswer: Bool = true // must be true so that play count won't increment on first launch
    
    private init() { }
    
    func loadQuestions() {
        questions.append(Question(question: "What is 7 + 7?", answer: "14"))
        questions.append(Question(question: "What is the capital of vermont", answer: "Monteplier"))
        questions.append(Question(question: "What is cognac made from?", answer: "Grapes"))
    }
    
    func getQuestion() -> String {
        returnedAnswer = false
        currentQuestion += 1
        if currentQuestion >= questions.count {
            currentQuestion = 0
        }
        
        return questions[currentQuestion].question ?? ""
    }
    
    func getAnswer() -> String {
        if let answer = questions[currentQuestion].answer {
            if (!returnedAnswer) {
                playCount += 1
            }
            returnedAnswer = true
            return answer
        }
        
        return "You must view a question first..."
    }
    
    func getPlayCount() -> Int {
        return playCount
    }
}
