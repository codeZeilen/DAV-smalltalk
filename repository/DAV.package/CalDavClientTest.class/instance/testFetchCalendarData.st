tests
testFetchCalendarData

	| client url data |

	client := SabreCalDavClient new.
	client username: 'U59269'. 
	client password: 'LSk8OD'. 
	url := 'https://www.caldavserver.com/DAV/calendars/968cdb81-71bc-45a1-af82-4ff016ca48b6/'. 
	data := client fetchCalendarDataFrom: url.
	
	self assert: 'Cal 1' equals: (data at: #'d:displayname').
	