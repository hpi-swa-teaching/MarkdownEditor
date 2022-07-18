helper
colorOfFirstCharInText

	| attributes |
	attributes := editor textStyler text attributesAt: 1.
	^ (attributes select: [:att | att class = TextColor]) first color