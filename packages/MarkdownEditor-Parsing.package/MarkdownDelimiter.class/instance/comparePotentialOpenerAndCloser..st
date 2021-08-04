comparing
comparePotentialOpenerAndCloser: anotherDelimiter

	^ self isPotentialOpener = anotherDelimiter isPotentialOpener
			and: [
		self isPotentialCloser = anotherDelimiter isPotentialCloser
			and: [
		self isOriginalOpenerAndCloser = anotherDelimiter isOriginalOpenerAndCloser]]

	