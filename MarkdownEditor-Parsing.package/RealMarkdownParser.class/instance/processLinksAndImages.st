parsing - inline
processLinksAndImages

	self delimiters reverseDo: [:c | c symbol = $[
									ifTrue: [ c isActive 
												ifTrue: [self searchForLinkFrom: c position]
												ifFalse: [^ $]] ]
									]