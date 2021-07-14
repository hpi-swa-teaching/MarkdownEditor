yellowButtonMenu
addLinkMenuItemsTo: aMenu

	^ aMenu 
		add: '[...]()' action: [self surroundSelectionWith: '[' and: ']()'];
		add: '[](...)' action: [self surroundSelectionWith: '[](' and: ')'];
		add: '<...>' action: [self surroundSelectionWith: '<' and: '>'];
		addLine;
		add: '![...]()' action: [self surroundSelectionWith: '![' and: ']()'];
		add: '![](...)' action: [self surroundSelectionWith: '![](' and: ')'];
		yourself