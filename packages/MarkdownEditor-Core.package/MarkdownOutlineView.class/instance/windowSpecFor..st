building
windowSpecFor: aBuilder

	^ aBuilder pluggableWindowSpec new
		model: self;
		children: OrderedCollection new;
		label: #label;
		extent: self initialExtent