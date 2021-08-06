A MarkdownSettings is a singleton that allows the user to change the appearances for each block. When you are having troubles with it, consider to reset the singleton by calling MarkdownSettings deleteInstance, this will reset your style settings to the default style settings dependent on the theme you are using.

Instance Variables
	blockStylerMorphs:		<OrderedCollection>
	contentMorph:				<PluggableScrollPane>
	currentStyleSettings:	<MarkdownStyleSettings>
	editors:								<MarkdownEditor>
	newStyleSettings:			<MarkdownStyleSettings>
	settingsVersion:				<SmallInteger>
	window:							<PluggableSystemWindow>

blockStylerMorphs
	- is a collection of BlockStylerMorphs that include the styling for each block

contentMorph
	- is the area in which the BlockStylerMorphs are displayed in the window

currentStyleSettings
	- current settings for all font sizes and colors of all styling elements.

editors
	- a collection of dependent editors to be able to give a preview of current settings.

newStyleSettings
	- new selected settings for all font sizes and colors for all styling elements, 
	becomes currentStyleSettings when hitting apply.

settingsVersion
	- is a version number of the settings

window
	- is the window to the model in which the settings are displayed