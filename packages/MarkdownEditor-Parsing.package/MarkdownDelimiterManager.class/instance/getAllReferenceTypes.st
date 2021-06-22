handle references
getAllReferenceTypes

	self allInlineReferences do:	[:referenceClass |
		self referenceTypes add: (referenceClass -> referenceClass new)]