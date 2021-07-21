version-control
checkVersion

	UniqueInstance
		ifNotNil: [(UniqueInstance settingsVersion = self settingsVersion)
				ifFalse: [self deleteInstance]]