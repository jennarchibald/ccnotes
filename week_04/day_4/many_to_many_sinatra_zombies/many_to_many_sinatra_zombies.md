# Many-to-Many Zombies

Remember our zombie database from week 3? This is a front end for it. We can view our zombies and their potential victims, plus a list of all the times someone has been bitten. We can also add new bitings and delete old ones (maybe they got better?).

Run the app and take some time to see how it works. Read through the code and see if you can follow the data flow. There are a few interesting things to consider:

- The notation when we're using when looking for a view inside a sub-folder
- Multiple controllers being used in app.rb
- Inner joins in the Victim and Zombie models
- How the data is used in the Bitings index e.g. using the zombie() and victim() methods
- How the victims and zombies are used in the drop downs for a new bitings

We've also had a bit of fun randomising the way the zombies are attacking. You don't need to do anything like that in your projects, but if you want to see how it's done check out the Action model.