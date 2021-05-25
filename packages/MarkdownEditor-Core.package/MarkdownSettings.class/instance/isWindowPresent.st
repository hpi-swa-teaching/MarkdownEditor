accessing
isWindowPresent

	^ (self window = #noWindow) not and: self dependents notEmpty