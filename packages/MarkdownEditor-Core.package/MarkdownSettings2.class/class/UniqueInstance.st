accessing
UniqueInstance

	^ UniqueInstance ifNil: [UniqueInstance := self new]