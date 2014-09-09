property pTitle : "Current line as timed Due.app sprint @mins(N)"
	function(editor, options) {
		
		var oNode= editor.selectedRange().startNode,
			strText=encodeURIComponent(oNode.text()),
			strTag = options.timetag,
			lngMins=options.defaultmins, strURL;
			
		if (oNode.hasTag(strTag)) lngMins = parseInt(oNode.tag(strTag), 10);
		
		strURL = ['due://x-callback-url/add?title=', strText, '&minslater=', lngMins.toString()].join('');
		editor.openLink(strURL);
		return strURL;
}
"