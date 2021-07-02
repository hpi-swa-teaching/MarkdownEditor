as yet unclassified
completeTextElementFrom: aText

	self isOrdered
		ifTrue: [^ (self number asString, self listMarker asString) asText, aText]
		ifFalse: [^ self listMarker asString asText, aText]