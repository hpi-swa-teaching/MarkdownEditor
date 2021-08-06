initialize-release
initialize

	super initialize.
	
	self initializeCalled: false.
	self openCalled: false.
	self setSuffixes: nil