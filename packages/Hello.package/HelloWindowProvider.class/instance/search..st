as yet unclassified
search: aString

	^ self
		filter: (SystemWindow windowsIn: World satisfying: [:window | true])
		by: aString
		action: 'Focus Window'
		labelDo: #label
		do: #beKeyWindow