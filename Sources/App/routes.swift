import Vapor


/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.post(LeaderBoardItem.self, at: "api/leaderboarditem"){ request, LeaderBoardItem ->
        Future<LeaderBoardItem> in
        
        return LeaderBoardItem.save(on: request)
        
    }
    
    router.get("api/allleaderboarditem"){ req -> Future<[LeaderBoardItem]> in
        return LeaderBoardItem.query(on: req).all()
    }
    
}
