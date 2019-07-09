initialize-release
initialize

	super initialize.
	self styler: (SHTextStylerST80 new
		classOrMetaClass: self class;
		parseAMethod: true;
		yourself)