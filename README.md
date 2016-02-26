# Project 2

Models are nearly done (tested in Tux), image upload should now be possible, together with additional user info, although error messages being returned at registration stage - looks as though the user model needs to be updated with email_address (rather than email), and profile_pic but will then hopefully work.

Work on views and controllers has also been started - easy wins (authentication, sessions, statics, layout.erb) done and have started on restful routes for properties (beginning with 'New', via placeholder 'index'), looks as though there are problems accessing any of these pages without registration - can authentication be adapted to be less restrictive? Alternatively could make whole site only accessible via login. 

Tuesday to do list
1. Update user model so that registration works
2. Clarify situation re login/page views (as above) - needs to be widely accessible if possible since the point of posts is to be readable, authentication helper needed?
3. Complete 'views', restful routes for properties and landlords. Make index pages searchable (by name/rating/borough, for landlord, by borough, postcode, 1st line address for property) - how to do this? jQuery needed? 'Index' page will then be results page? 
4. Complete controllers for 'property', 'landlord', ensure that they work properly
5. Comments - should they be added on new? If so, add comments field to properties and landlords (&update models?) Makes sense to add comments after search results?


Status at end of Tuesday
Some progress made, most restful routes on site are now active. 

The main issues to resolve on Wednesday are as follows:
1. Log-in/registration - not working properly, haven't been able to add new users and photos don't appear to be adding correctly
2. Having issues 'putting' information into the database, either by creation of new records (eg can make new property record but it shows as blank record on index page) or posting updates once edits done
3. Comments - have added in fields so that comments can be added but, again, these aren't being rendered on the site
4. Links between models - working on Tux so they should be OK, just getting confused re how to link, eg landlord/property ids through the site.



Final notes

What I learned? Think I now  have a much better grasp on how restful routes work in relation to Sinatra, on how to user controllers, views, models and migrations. Plenty that I'd like to do in relation to this but feeling much more confident in dealing with these now.

I also think I have a better understanding of how migrations work (and why not to go backwards with them). I liked getting to grips with image uploaders 









