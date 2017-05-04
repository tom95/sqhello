as yet unclassified
sortsBefore: anotherItem

	^ self score = anotherItem score
		ifTrue: [self label size < anotherItem label size]
		ifFalse: [self score > anotherItem score]