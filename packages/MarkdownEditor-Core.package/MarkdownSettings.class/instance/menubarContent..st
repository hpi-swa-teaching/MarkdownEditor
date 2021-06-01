building
menubarContent: aBuilder

	| spec |
	
	spec := OrderedCollection new.
	self blockCategories do: [:item | spec add: (aBuilder pluggableButtonSpec new
			label: item;
			model: self;
			enabled: true;
			action: [self showStylerMorphsFor: item];
			yourself)
			].
	^ spec