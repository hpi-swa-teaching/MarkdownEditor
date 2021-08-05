A MarkdownBlockStylerMorph offers an UI to change a block's font size and font color.

Instance Variables
	classCategory:		<String>
	classLabel:			<TextMorph>
	fontColorPicker:		<MarkdownColorChooser>
	fontSizeSlider:		<MarkdownSlider>
	sliderLabel:			<TextMorph>
	styleSettings:		<MarkdownStyleSettings>

classCategory
	- is a string for classifying the blocks into "General", "Headings" or "Lists"

classLabel
	- is the name of the block

fontColorPicker
	- is used to select the color of the block

fontSizeSlider
	- is used to select the font size

sliderLabel
	- displays the font size as a number

styleSettings
	- contains two dictionaries for font color and font size with style settings for all blocks
