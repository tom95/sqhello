as yet unclassified
drawOn: aCanvas

	BTWidget
		drawBackgroundOn: aCanvas
		bounds: self bounds
		colors: self colorScheme
		rounded: #(false false true true)
		bordered: #(false true true true)