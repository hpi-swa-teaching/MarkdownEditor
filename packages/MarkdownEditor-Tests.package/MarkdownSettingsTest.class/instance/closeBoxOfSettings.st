helper
closeBoxOfSettings

	^ (settings window labelArea submorphs 
		select: [:submorph | submorph class = SystemWindowButton 
			and: [submorph actionSelector = #handleCancel]]) first