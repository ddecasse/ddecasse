# ddecasse

### Hi there, I'm Dan - aka [ddecasse][website] 👋

## I'm a Husband, Father, Developer, and D.B.A.!

- 🌱 I’m currently learning everything 🤣
- 👯 I’m looking to collaborate with other content creators
- 🥅 2022 Goals: Continue to Grow my Skill Set
- ⚡ Fun fact: I love to play guitar and watch a good movie

### 📕 Latest Blog Posts

<!-- BLOG-POST-LIST:START -->
- [Upon Further Review: Plans Prematurely Put in Motion by Pandemic](https://ddecasse.wordpress.com/2020/03/18/upon-further-review-plans-prematurely-put-in-motion-by-pandemic/)
- [In Review : 20/20 clear sighted](https://ddecasse.wordpress.com/2020/02/17/in-review-20-20-clear-sighted/)
- [In Review: Catching Up](https://ddecasse.wordpress.com/2019/03/04/in-review-catching-up/)
- [In Review: Crossing Time Lines.](https://ddecasse.wordpress.com/2019/01/01/in-review-crossing-time-lines/)
- [In Review:  Crumbs](https://ddecasse.wordpress.com/2018/11/02/in-review-crumbs/)
<!-- BLOG-POST-LIST:END -->

[website]: http://ddecasse.wordpress.com/

### My Snippets

📕 A list of snippets that have followed me around to best support my text editor logs and such. 
The ones shown here best facility the current version of my activity log which has helped feed my to do list. 
A sort of xml file inbox before the todoist inbox. 

     "Need to Do": {
     	//"scope": "javascript,typescript",
     	"prefix": "NTD",
     	"body": [
    		 "<NTD TaskID=\"$2\" CreatedDate=\"$CURRENT_MONTH/$CURRENT_DATE/$CURRENT_YEAR\" >$1</NTD>"
     	],
     	"description": "Make a new basic task"
     },
     "Need to Do with Complexity And Importance": {
    	//"scope": "javascript,typescript",
    	"prefix": "NTDICU",
    	"body": [
    		"<NTD 
			TaskID=\"$CURRENT_YEAR$CURRENT_MONTH$CURRENT_DATE$CURRENT_HOUR$CURRENT_MINUTE$CURRENT_SECOND\" 
			Importance=\"${2|4,3,2,1|}\" 
			Complexity=\"${3|D,C,B,A|}\" 
			Urgency=\"${4|!,!!,!!!,!!!|}\" 
			CreatedDate=\"$CURRENT_MONTH/$CURRENT_DATE/$CURRENT_YEAR\" 
			GoalDate=\"$CURRENT_MONTH/$CURRENT_DATE/$CURRENT_YEAR\" 
			Category=\"${6|Personal,Family,Professional,DSS|}\">$5</NTD>"
    	],
    	"description": "Make a new basic task"
    },
     "Unit of Work": {
    	//"scope": "javascript,typescript",
    	"prefix": "UOW",
    	"body": [
    		"<UOW TaskID=\"$1\" Description=\"$2\">$3</UOW>"
    	],
    	"description": "Record a unit of work. Task ID Should tie to a NTD or such."
    },
    "Meeting": {
    	//"scope": "javascript,typescript",
    	"prefix": "MTG",
    	"body": [
    		"<Meeting EventID=\"$CURRENT_YEAR$CURRENT_MONTH$CURRENT_DATE$CURRENT_HOUR$CURRENT_MINUTE$CURRENT_SECOND\" Importance=\"${2|4,3,2,1|}\"
			CreatedDate=\"$CURRENT_MONTH/$CURRENT_DATE/$CURRENT_YEAR\" 
			Topic=\"\" 
			Category=\"${6|Personal,Family,Professional,DSS|}\">$5</NTD>"
    	],
    	"description": "Make a Meeting"
    }
