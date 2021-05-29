build
buildWith: aBuilder

	| spec |
	spec := self buildWindowWith: aBuilder 
				specs: {(0@0 corner: 1@1) -> [self buildScrollPane: aBuilder]}.
	^ aBuilder build: spec