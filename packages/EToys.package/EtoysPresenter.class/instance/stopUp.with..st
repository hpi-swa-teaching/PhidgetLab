stop-step-go buttons
stopUp: dummy with: theButton
	self flushPlayerListCache.  "catch guys not in cache but who're running"
	self stopRunningScripts