tests - xml
testWriteProperties

	| xmlWriter |
	
	xmlWriter := XMLWriter on: (WriteStream on: '').
	query properties: #('D:displayname').
	query createPropertiesXmlOn: xmlWriter.

	self assert: (xmlWriter flush stream contents) =  '<D:prop><D:displayname/> </D:prop>'.
	
	 