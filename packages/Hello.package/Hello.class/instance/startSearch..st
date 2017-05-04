as yet unclassified
startSearch: aString

	self resultList
		submorphsDo: [:item | item active: false];
		removeAllMorphs.

	self extent: 0 asPoint.

	activeItemIndex := 0.

	aString ifNotEmpty: [
		self resultList addAll: ((Array streamContents: [:stream |
			self providers do: [:provider | stream nextPutAll: (provider search: aString)]]) contents
			sort: [:a :b | a sortsBefore: b]).
		self moveActiveItem: 1]