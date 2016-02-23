# Project2

Status at end of Monday
Models are nearly done (tested in Tux), image upload should now be possible, together with additional user info, although error messages being returned at registration stage - looks as though the user model needs to be updated with email_address (rather than email), and profile_pic but will then hopefully work.

Work on views and controllers has also been started - easy wins (authentication, sessions, statics, layout.erb) done and have started on restful routes for properties (beginning with 'New', via placeholder 'index'), looks as though there are problems accessing any of these pages without registration - can authentication be adapted to be less restrictive? Alternatively could make whole site only accessible via login. 

Tuesday to do list
1. Update user model so that registration works
2. Clarify situation re login/page views (as above) - needs to be widely accessible if possible since the point of posts is to be readable, authentication helper needed?
3. Complete 'views', restful routes for properties and landlords. Make index pages searchable (by name/rating/borough, for landlord, by borough, postcode, 1st line address for property)
4. Complete controllers for 'property', 'landlord', ensure that they work properly
5. Comments - should they be added on new? If so, add comments field to properties and landlords (&update models?)?


