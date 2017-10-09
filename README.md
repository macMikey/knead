# knead
A tool for migrating LiveCode stacks to a git-friendlier setup, by moving scripts into script-only stacks (and assigning the Script-Only Stack as a behavior for whatever object the script came from).  Can also extract the individual properties of each object in a stack (card, background, button, field, etc.), and store them as text files, which means that even layouts can be made git-friendlier.

It is inspired by/based on LiveCode's "Scriptify" script-only stack.




##to do:
--------------
#determine naming convention

What do I want my notation to look like?
existing:
<stackName><objectName><objectType>behavior

If I organize into folders then this seems easier but I'm going to get hosed on unique names.  HOWEVER it's not the stack name that's the problem, it's the script name.  So you can name the stacks whatever you want, but the script needs to have a unique name.
	test
		+ card test
			button_test 
		+ card test2
			button_test


what do i do about unnamed objects that just have numbers or id's?
what do I do about groups?
what if a group appears on multiple cards?
	#give the user an option for the naming convention?
	My vote is stack_stackname.sub_substackname.card_cardname.objecttype_objectname?
	stack_test.card_test.button_test
	stack_test.substack_test.card_test.group_test.button_test


Alternatives
stack.stackname.substack.substackname.card.cardname.objecttype.name?
	stack.test.card.test.button.test
stackname.substack.substackname.card.cardname.objecttype.objectname?
	test.card.test.button.test
name.objecttype.cardname.card.substackname.substack.stackname.stack?
	test.button.test.card.test.stack


	##let them customize?
		###break some subgroups - e.g. maybe don't use name of group or specify that object was grouped.
		###maybe give them a list, and let them hack the list
----------------------------



#do a name pass, first, check for object name uniqueness
#if have an issue then prompt user, go to card, bring up properties for the object
#help button in a corner - small box with "?"
#disassemble - pull all the properties out of objects and build yaml files, have a separate library to reassemble - could submodule into levure...
