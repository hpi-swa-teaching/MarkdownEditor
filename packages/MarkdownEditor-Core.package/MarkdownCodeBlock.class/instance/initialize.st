initialize-release
initialize

	super initialize.
	self smalltalkStyler: (SHTextStylerST80 new
		parseAMethod: true;
		yourself)