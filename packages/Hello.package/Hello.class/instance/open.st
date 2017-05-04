as yet unclassified
open

	self
		startSearch: self searchInput text;
		selectAll;
		show;
		openInWorld;
		fullBounds;
		minSize: self world width / 3 @ 0;
		position: (self world width / 2) - (self width / 2) @ 0.

	self grabFocus