parsing2
interpretTokens: tokenList
	
	| elements opener i|
	elements := OrderedCollection new.
	opener := tokenList removeFirst.
	i := 0.
	[i <= tokenList size] 
		whileTrue: [ | token | 
			token := tokenList at: i.
			(token matches: opener)
				ifTrue: [^self process: opener withElements: elements].
			(token class = MarkdownString)
				ifTrue: [elements add: (self process: token).
					i += 1]
				ifFalse: [|subElement| 
					subElement :=  (self interpretTokens: (tokenList copyFrom: i to: tokenList size)).
					i += subElement amountOfParts.
					elements add: subElement]].
	^self process: MarkdownTextToken new withElements: opener asStringToken, elements.  