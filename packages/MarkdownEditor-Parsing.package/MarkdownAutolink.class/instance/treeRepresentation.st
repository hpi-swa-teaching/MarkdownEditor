view
treeRepresentation

	| description |
	description := ''.
	self isEmail
		ifTrue: [description := 'E-Mail']
		ifFalse: [description := 'Link'].
	^ {description. self path}