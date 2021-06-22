handle emphasis
getAllEmphasisTypes

	self allInlineEmphasises do:	[:emphasisClass |
		self emphasisTypes add: (emphasisClass -> emphasisClass new)]