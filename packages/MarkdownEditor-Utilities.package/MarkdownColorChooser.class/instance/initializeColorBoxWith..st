initialize
initializeColorBoxWith: aColor

	^ SimpleButtonMorph new
			color: aColor;
			label: '';
			actionSelector: #adjustTo:;
			arguments: {aColor};
			target: self;
			borderColor: aColor;
			width: self simpleColorChoosersSize;
			height: self simpleColorChoosersSize;
			yourself