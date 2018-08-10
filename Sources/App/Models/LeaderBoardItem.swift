import FluentSQLite
import Vapor


final class LeaderBoardItem: Content{
    var id: Int?
    var username: String
    var score: Int
    
    init(username: String, score: Int){
        self.username = username
        self.score = score
    }
}

extension LeaderBoardItem: SQLiteModel{
    static let entity = "leaderBoardItems"
}

// Allows `LeaderBoardItem to be used as a dynamic migration.
extension LeaderBoardItem: Migration { }

/// Allows `LeaderBoardItem` to be encoded to and decoded from HTTP messages.
//extension LeaderBoardItem: Content { }

/// Allows `LeaderBoardItem` to be used as a dynamic parameter in route definitions.
//extension LeaderBoardItem: Parameter { }
