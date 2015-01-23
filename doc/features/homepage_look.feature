Feature: Homepage for the System Analyser

	As a user of the System Analyser
	So that I can use the System Analyser, understand how to use it and who to contact in case of any problems
	I want an intuitive, smart, well presented homepage, responsive homepage to do all of the above

	I want a 'single page' landing page for the System Analyser. It should have the following functional features:

		1. A how-to describing how to use the tool and some pictures of screen captures illustraing the kind of displays the app produces.
		2. A contacts section listing who to contact for help or issues.
		3. A title listing the name of the tool and what is does.
		4. A way of using the tool, an interface to generate the initial displays.
		5. A menu allowing me to navigate around the page.
		6. It should be responsive so that it could be used on a mobile device - mobile first!


Background: Assume the following data exists

	We have a single server with a full days set of data

Scenarios:

When I land on the homepage of the System Analyser

Scenario: Use the how-to

	Then I want to read about how the system works and see some example images

Scenario: Contact support

	Then I want to be able to find the contact details for the support team

Scenario: Show server metrics display

	Then I want to select a server by name and a date and then be shown the server metrics for that server for that day

Scenario: Menu

	Then I want to naviagte around the page using a menu with the following options,
	| System Analyser	| Takes you to the top of tha page 				|
	| Select System		| Takes you to the select system section 	|
	| How To	 				|	Takes you to the How To section					|
	| Contacts				| Takes you to the contacts section				|