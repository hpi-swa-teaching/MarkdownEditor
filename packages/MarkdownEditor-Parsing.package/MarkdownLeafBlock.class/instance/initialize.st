initialize-release
initialize

	super initialize.
	self content: '';
		inlines: OrderedCollection new;
		innerStartPosition: 0