yellowButtonMenu
addLinkMenuItemsTo: aMenu
	aMenu 
		add: '[...]()' action: [self applyLinkText];
		add: '[](...)' action: [self applyLinkDestination];
		add: '<...>' action: [self applyAutoLink];
		addLine;
		add: '![...]()' action: [self applyImageText];
		add: '![](...)' action: [self applyImageDestination];
		yourself.
	^ aMenu