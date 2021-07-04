parsing
parseWithState: aParsingState

	| listData indention |	
	(listData := self parseListMarker: aParsingState) 
		ifNil: [^ nil].
		
	indention := self parseIndention: (listData at: #remains).
	indention = 0 ifTrue: [^ nil].
	listData at: #length put: (listData at: #length) + indention.
	
	listData at: #remains put: ((listData at: #remains) 
		ifNotEmpty: [(listData at: #remains) allButFirst: indention]).
	
	^ listData
	