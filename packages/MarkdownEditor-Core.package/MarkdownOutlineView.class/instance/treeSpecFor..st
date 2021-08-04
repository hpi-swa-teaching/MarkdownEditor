building
treeSpecFor: aBuilder

	^ aBuilder pluggableTreeSpec new
		model: self;
		roots: #document;
		getChildren: #getNextIndentationLevel:;
		doubleClick: #click:;
		columns: {
				[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
				nil "take all the space"};
		frame: (0 @ 0 corner: 1 @ 1);
		yourself.