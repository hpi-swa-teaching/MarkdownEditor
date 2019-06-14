initialize-release
initialize

	super initialize.
	self styler: (SHTextStylerST80 new
		parseAMethod: true;
		yourself)