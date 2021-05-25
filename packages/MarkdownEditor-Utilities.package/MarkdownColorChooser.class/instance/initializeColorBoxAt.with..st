initialize
initializeColorBoxAt: aPoint with: aColor

	^ SimpleButtonMorph new
			color: aColor;
			label: '';
			actionSelector: #handleColorChangeTo:;
			arguments: {aColor};
			target: self;
			borderColor: aColor;
			width: 15;
			height: 15;
			position: aPoint;
			yourself