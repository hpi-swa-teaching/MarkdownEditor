convertStyle
labelAsCssDescriptor: aLabel
	
	| dictionary |
	dictionary := Dictionary newFrom: {'Unord. List 1'->'ul'. 'Unord. List 2'->'ul ul'. 'Unord. List 3+'->'ul ul ul'. 'Ord. List 1'->'ol'. 'Ord. List 2'->'ol ol'. 'Ord. List 3+'->'ol ol ol'}.
	^ dictionary at: aLabel