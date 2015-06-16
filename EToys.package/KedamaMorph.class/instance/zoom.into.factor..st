private
zoom: src into: dst factor: f

	src unhibernate.
	dst unhibernate.
	^ self primZoom: src bits into: dst bits srcWidth: src width height: src height multX: f y: f.
