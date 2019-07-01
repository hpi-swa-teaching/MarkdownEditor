initialize-release
initialize

	super initialize.
	self styler: (SHTextStylerST80 new
		classOrMetaClass: WeakSmalltalkParser;
		parseAMethod: true;
		yourself)