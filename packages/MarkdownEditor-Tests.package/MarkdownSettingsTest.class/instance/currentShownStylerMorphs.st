tests - ui
currentShownStylerMorphs

	^ (settings contentMorph submorphs 
		select: [:sub | sub class = TransformMorph]) first submorphs asSet