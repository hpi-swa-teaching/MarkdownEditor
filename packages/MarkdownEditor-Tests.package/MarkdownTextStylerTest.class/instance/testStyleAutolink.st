tests - emphasis
testStyleAutolink

	| text fontColor fontSize sampleAutolink plugAttr emphasis plugAttrOfText |
	text := '<squeak@hpi.de>' asText.
	textStyler privateStyle: text.
	fontSize := self styleSettingsForStylingTests fontSizes at: 'Paragraph'.
	fontColor := self styleSettingsForStylingTests fontColors at: 'Paragraph'.
	sampleAutolink := MarkdownAutolink new.
	plugAttr := PluggableTextAttribute evalBlock: sampleAutolink openUrl.
	emphasis := TextEmphasis underlined.
	plugAttrOfText := (text runs values first select: [:attribute | attribute class = PluggableTextAttribute]) first.
	self unlinkLinkActionFor: plugAttr and: plugAttrOfText.
	self
		assertRunsValues: {self textAttributesFor: fontColor and: fontSize and: emphasis and: plugAttr}
		areStyleOf: text