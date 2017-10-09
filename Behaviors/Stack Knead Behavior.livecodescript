script "Stack Knead Behavior"

on openStack
	choose browse tool
	put 10 into field "Minimum Script Length"
	set the hilite of button "Organize For Levure" to true
   __UpdateStackList
end openStack



on resumeStack
   __UpdateStackList
end resumeStack



private command __UpdateStackList
   local tStacks, tStack
   repeat for each line tStack in the mainstacks
      if the scriptOnly of stack tStack then next repeat
      put tStack & return after tStacks
   end repeat #for each line tStack in the mainstacks

   set the text of button "mainstacks" to tStacks
end __UpdateStackList