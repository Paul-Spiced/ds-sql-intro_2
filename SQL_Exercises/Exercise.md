# The theft of the Mona Lisa
---

the exercises are adapted to postgresql from the sql-tutorial by [opentechschool](http://opentechschool.github.io/sql-tutorial/)

![](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c0/Beroud-Louis-Joconde.jpg/170px-Beroud-Louis-Joconde.jpg)

How you will find the thief

When you follow the tutorial you will step-by-step:

-> Find out, who was in Paris at that time.

-> The thief was probably not working alone. Is there any suspicious communication during the time in question?

-> If you find the people responsible, who was the actual wire-puller and who was "only" the henchman?


In dBeaver set the monalisa as the default schema.

## Exercises:

Work in pairs to solve the following tasks

![](https://static.wikia.nocookie.net/s__/images/7/79/Jessica_fletcher.jpeg/revision/latest?cb=20130409163539&path-prefix=sherlockpedia%2Fde)

### 1. Investigate the tables

Take a look at the table names and columns. What table could have information about traveling?

### 2. Have a look at the data

What kind of information is stored in the table with traveling inforamation?

### 3. Who lives in Paris?

Get the names of all people who live in Paris.

### 4. Get all names that did a journey to Paris before 23.10.2014.

### 5.  Get all names that did a journey from Paris after 23.10.2014.

### 6 Get all names, that did a journey to Paris before 23.10.2014, where this name is also in an entry for a journey from Paris after the 23.10.2014.

### 7. Get all names of persons who live in Paris or spent their time in Paris on 23.10.2014 (according to the travel data).

---

What is the pool of suspects you have left?

![](https://paris1899.de/wp-content/uploads/2019/08/Untitled-design-124.jpg)

The Local police will pay the people on the short list a visit to ask for alibi. You now need a list of names and their residence. Repeat the previous query but this time get also the residence. 

Now, check the result. There is something wrong! In the list of conspicuous persons, there is one, who actually never was in Paris, i.e. who lives neither in Paris nor was traveling there.


### 8. Who is it?

First perform a select on the flight table where the name is one of those who do not live in Paris. Second, check for every person-residence pair if there is a corresponding flight. For one there is no corresponding flight. Who is this person? Why is this person turning up in that list?

Now, look at your where statement in the last query you have performed. The tables person and flight are joined by the field name whose entries are not unique. To prevent mistakes like this, data is usually more structured: People who create a table, usually define a column (or the combination of several columns) which is unique for every entry. This column is called the primary key (PK). Other tables which are referencing entries of this table have a corresponding column, containing the same value as the primary key column of the referenced table. This corresponding column is called foreign key (FK). For example, in our person table the field id is the primary key. This id is used in the phone_contract table as a foreign key person_id.

person (id) = phone_contract (person_id)

### 9. What foreign keys are used in the table containing the messages and which is the referenced table?

hint: primary key is unique and the name often contains the suffix "id" and the foreign key columns often contain the name of the referenced table. (this is though only a convention, not always implemented in practice) 

### 10. Try previous query using the primary key/foreign key connection instead of the name


## WHO is the thief?? - order by and group by
---

![](https://64.media.tumblr.com/bd06d5721a022f2ba59abf60a4537758/tumblr_o8ofi9NGiJ1udb1f6o1_500.jpg)

To find out who is the thief, check the text messages stored by the mobile phone providers.

### 11. What are the names of the table containing the text messages and the one containing phone contracts?

### 12. Get all text messages  which where sent between 2014-10-20 and 2014-10-25.

### 13. Get all contract ids where the contract.person_id is equal to one of the persons from the results of question 19.

### 14 Get all text messages where the sent date between 2014-10-20 and 2014-10-25 and the contract_sender_id is equal to the contract ids where the contract.person_id is equal to one of the persons from the results of question 19.

You see that you got all the required information but the output looks kind of chaotic. You can order an result set according to a column with an order by phrase. The query to get all text messages from 21.10.2014 ordered by time reads

select message from messages where sent like '2014-10-21%'
order by sent;
Remember again that date comparison is in SQLite a lexicographical comparison. So, if we would use sent = '2014-10-21' we got an empty result set. Instead we must use the % wild-card for the time information as shown above.

### 15. Get a list of messages from our suspects from the given time period and sort the messages.

### 16.  Who are the thieves? Hint: Read the conversations as they a give a clear trace. Check the ids of sender and receiver of the message and look it up in the person tables!



If you have found the thieves you deserve some break! To practice more sql, you can continue the investigation of this incredible crime and find out [who was the string puller](http://opentechschool.github.io/sql-tutorial/chapter4.html) when you have some free time.
