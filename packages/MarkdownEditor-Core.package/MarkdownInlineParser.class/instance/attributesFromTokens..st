parsing
attributesFromTokens: aCollectionOfMarkdownTokens

	|attributes|	
	attributes := OrderedCollection new.
	aCollectionOfMarkdownTokens 
		select: [:token | token isDelimiter] 
		thenDo: [:delimiter|
			delimiter isActive ifTrue: [
				self findClosingDelimiterFor: delimiter 
					in: aCollectionOfMarkdownTokens
					ifFound: [:closer | |interval|
						interval := Interval from: delimiter position to: closer position + closer content size - 1.
						attributes addLast: (delimiter attribute range: interval; yourself).
						closer beInactive.].
				delimiter beInactive]].
	^ attributes