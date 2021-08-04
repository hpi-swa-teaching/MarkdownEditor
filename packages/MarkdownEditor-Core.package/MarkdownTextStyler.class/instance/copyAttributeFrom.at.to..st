helper
copyAttributeFrom: aModelText at: anIndexInModelText to: anIndexInText

	| attributes |
	attributes := aModelText attributesAt: anIndexInModelText.
	attributes 
		ifNotEmpty: [self addAttributes: attributes at: anIndexInText]