accessing
codeContent

	| code |
	code := self lines allButFirst.
	self isClosed
		ifTrue: [code := code allButLast].
	^ code inject: '' into: [:result :line | result, line]