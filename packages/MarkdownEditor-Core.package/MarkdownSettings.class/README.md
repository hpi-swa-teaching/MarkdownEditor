A MarkdownSettings is a singleton that allows the user to change the appearances for each block.

Instance Variables
	blockStylerMorphs:		<OrderedCollection>
	contentMorph:		<PluggableScrollPane>
	currentStyleSettings:		<MarkdownStyleSettings>
	editors:		<MarkdownEditor>
	newStyleSettings:		<MarkdownStyleSettings>
	settingsVersion:		<SmallInteger>
	window:		<PluggableSystemWindow>

blockStylerMorphs
	- is a collection of BlockStylerMorphs that include the styling for each block

contentMorph
	- is the area in which the BlockStylerMorphs are displayed in the window

currentStyleSettings
	- are the style settings that a user is using at the moment

editors
	- is a collection of editors that use these style settings

newStyleSettings
	- are the style settings that a user will use when confirming changed style settings

settingsVersion
	- is a version number of the settings

window
	- is the window to the model in which the settings are displayed
