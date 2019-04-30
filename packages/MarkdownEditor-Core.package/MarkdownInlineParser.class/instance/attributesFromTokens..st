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
					ifFound: [:closer | |attribute|
						attribute := delimiter attribute.
						attribute 
							start: delimiter position; 
							end: closer position + closer content size - 1.
						attributes addLast: attribute.
						closer beInactive.].
				delimiter beInactive]].
	^ attributes