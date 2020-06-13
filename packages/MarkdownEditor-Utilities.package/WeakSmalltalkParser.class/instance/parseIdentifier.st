as yet unclassified
parseIdentifier
	"currentToken is either a name of an existing variable, a prefix of a variable or an undefined identifier. Return the appropriate range type for it."

	currentToken = #self ifTrue: [ ^#self ].
	currentToken = #true ifTrue: [ ^#true ].
	currentToken = #false ifTrue: [ ^#false ].
	currentToken = #nil ifTrue: [ ^#nil ].
	currentToken = #super ifTrue: [ ^#super ].
	currentToken = #thisContext ifTrue: [ ^#thisContext ].
	
	arguments size to: 1 by: -1 do: [ :level | 
		(arguments at: level) ifNotNil: [ :levelArguments |
			(levelArguments includes: currentToken) ifTrue: [ 
				^level = 1 
					ifTrue: [ #methodArg ]
					ifFalse: [ #blockArg ] ] ].
		(temporaries at: level) ifNotNil: [ :levelTemporaries |
			(levelTemporaries includes: currentToken) ifTrue: [
				^level = 1
					ifTrue: [ #tempVar ]
					ifFalse: [ #blockTempVar ] ] ] ].
		
	(instanceVariables includes: currentToken) ifTrue: [^#instVar].
	
	workspace 
		ifNotNil: [(workspace hasBindingOf: currentToken) ifTrue: [^#workspaceVar]].
	
	(Symbol lookup: currentToken) ifNotNil: [:sym | 
		classOrMetaClass
			ifNotNil: [
				classOrMetaClass theNonMetaClass withAllSuperclassesDo: [:c | 
					(c classPool bindingOf: sym) ifNotNil: [^#classVar].
					c sharedPools do: [:p | (p bindingOf: sym) ifNotNil: [^#poolConstant]].
					(c environment bindingOf: sym) ifNotNil: [^#globalVar]]]
			ifNil: [(environment bindingOf: sym) ifNotNil: [^#globalVar]]].
	
	^ currentToken first isUppercase "Very prone to mistakes, but less chatty"
		ifTrue: [#globalVar]
		ifFalse: [#instVar]