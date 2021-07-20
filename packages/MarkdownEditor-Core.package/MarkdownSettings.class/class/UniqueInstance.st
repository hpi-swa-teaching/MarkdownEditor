accessing
UniqueInstance

	self checkVersion.
	^ UniqueInstance ifNil: [UniqueInstance := self new]