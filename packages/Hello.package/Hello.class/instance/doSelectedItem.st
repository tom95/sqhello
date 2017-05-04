as yet unclassified
doSelectedItem

	activeItemIndex > 0 ifTrue: [
		(self resultList submorphs at: activeItemIndex) execute].

	self close