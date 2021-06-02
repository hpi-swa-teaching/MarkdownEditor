tests - window
testApplyTheme
	editor applyUserInterfaceTheme.
	
	self assert: window userInterfaceTheme theme = UserInterfaceTheme current