as yet unclassified
getAllEmphasisTypes

	self allInlineEmphasises do:	[:emphClass |
		self emphasisTypes add: (emphClass -> emphClass new)]