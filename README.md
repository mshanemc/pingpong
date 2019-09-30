# Ping Pong App Creation

## Plan your data model

What types of information will you be capturing, and how will they be connected? In the case of our Ping Pong App, we capturing information on Players, Games, and Matches. These will be our OBJECTS. For each of our OBJECTS, we want to capture additional data like name, start time, or how many points they scored. These will be our FIELDS. I find it helpful to map this information out before we actually do anything in Salesforce. Once you have it mapped out, you can hit the Schema Builder to start creating!

## Create your OBJECTS and FIELDS

Schema Builder is the fastest (and most visual) way to create new OBJECTS and FIELDS. You can instantly see what is connected to what, and see a nice list of what you're doing. To get started, all you need to do is drag the OBJECT element on to the canvas in Schema Builder. Name it, and now you have a new customer object! You'll repeat this for the other objects you need. Once you have your objects, you'll start adding custom fields by dragging a FIELD onto the OBJECT where you want it to live. You can choose any field type that is available in the list. For this app, I've used Roll-Up Summaries, Formulas, Master-Details, Lookups, Dates, Picklists, and Text fields. So many choices really gives you the power to do anything!

1. Create the MATCH Object.
2. Create the GAME Object.
3. Create the PLAYER Object.
4. Create your customer fields:
   - On the MATCH Object, you'll create:
     1. Player 1 - Lookup to Player Object
     2. Player 2 - Lookup to Player Object
     3. Player 1 Total Points - Roll-Up Summary
     4. Player 2 Total Points - Roll-Up Summary
     5. Match Start Time - Roll-Up Summary
     6. Match End Time - Roll-Up Summary
     7. Match Status - Picklist
     8. Winner - Formula
   - On The GAME Object, you'll create:
     1. Start Time - Date/Time
     2. End Time - Date/Time
     3. Player 1 - Formula
     4. Player 2 - Formula
     5. Player 1 Score - Number
     6. Player 2 Score - Number
     7. Match - Master Detail to MATCH
   - On the PLAYER Object, you'll create:
     1. Nickname - Text
     2. Attack - Number
     3. Concentration - Number
     4. Defense - Number
     5. Endurance - Number
     6. Power - Number
     7. Serve - Number
     8. Stability = Number
     9. Player Name - Text

By using Lookups and Master Detail Relationships, we've now integrated our data model so that these objects are connected!

Now that we have our data model in place, we can work on our page layouts. First, we'll want to make sure that we have all the fields on the Salesforce Classic page layout so that they pull into our Lightning Page Layout. One by one, choose each object from the Object Manager, click on the page layout and drag the fields you want down onto the canvas. You can organize them in different sections or groups. I kept all my Player 1 information in the left column and my Player 2 information in the right column.

Once you have your layouts looking good, its time to design our Lightning Pages - these pages will be how people interact with your app. First we need to do a couple more things to help us get there.

1. Create custom tabs - in Setup, search for "Tabs". Create a new tab for each object - this allows us to have those tabs in our app. You'll create a new tab for Match, Game, and Player.
2. Once you finish your tabs, let's search for our first object so that we can create a sample record and see how our page looks. In the app launcher, search for Player and click on it from the search results. Create a sample record by filling in the Player Name and choose some numbers for the player stats. Click save. Repeat this so that we have 2 Player records that we can use for samples in our other objects.
   - On one of the Player records you just created, let's make sure this page looks the way we want it to. Out of the box, this page design will have all of our fields that we added, and 2 related lists giving us all the matches that this player has been a part of. This is good for now - let's move on.
   - In the Matches related list, select "New". Populate Player 2's Name and choose a Match Status.
   - Once the new Match record creates, click into it so that we can edit that page too. I used a simple one column page layout for the Match page with Details on top and then the Games Related List underneath. To do this, you'll click the gear icon in the upper right hand corner of your page and select "Edit Page". You can drag different widgets around, change the layout, and add any images or extra flair that you want. When you're done, save and activate your page.
3. Once your Match Page is good, create a new Game record by clicking New in the related list. Fill in the start and end times, and player scores. Once you hit save, we can see how this information rolls up to our Match Record!

Once our pages are looking nice, its time to wrap this app up and roll it out to our users! Back in the setup menu, navigate to the App Manager, and create a new Lightning App called "Ping Pong". You can select an icon and colors and add a description.

1. In the App Options, choose Standard Navigation and allow the app to be accessed from both Desktop and Mobile. It will be great to use on Mobile during a Match for quick entry!
2. You can skip the Utility Items for now.
3. For Navigation Items, select our objects - Match, Game, and Player. You should also include the Home page in case you want to customize it later with cool stats and reports.
4. Next we'll decide who to give the app too - I would say EVERYONE! Select the applicable profiles, and then Save and Finish.

Click on the App Launcher, select your app and see what you just built - in 30 Minutes or Less!!
