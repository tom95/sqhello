as yet unclassified
moveActiveItem: anOffsetNumber

	self resultList hasSubmorphs ifFalse: [
		activeItemIndex := 0.
		^ self].

	(activeItemIndex > 0 and: [activeItemIndex <= self resultList submorphCount]) ifTrue: [
		(self resultList submorphs at: activeItemIndex) active: false].

	activeItemIndex := activeItemIndex + anOffsetNumber
		clampLow: 1
		high: self resultList submorphs size.

	(self resultList submorphs at: activeItemIndex) active: true