# ddecasse

![This is the alt-attribute for my image](https://sdk.bitmoji.com/render/panel/20048676-134042730_8-s4-v1.png?transparent=1&palette=1&scale=1 "Tis Himself")

**Hi there, I'm Dan - aka** [ddecasse][website] 👋
<br/>
[![Linkedin](https://i.stack.imgur.com/gVE0j.png)](https://www.linkedin.com/in/dan-decasse-04365546)
[![](https://img.shields.io/twitter/follow/:twitterHandle.svg?style=social&label=@ddecasse)](https://twitter.com/@ddecasse)
## I'm a Husband, Father, Developer, and D.B.A

- 🌱 I’m currently learning everything 🤣
- 👯 I’m looking to collaborate with other content creators
- 🥅 2022 Goals: Continue to Grow my Skill Set
- ⚡ Fun fact: I love to play guitar and watch a good movie

## Profiencies

- 🌱 SQL Server
- 🌱 C#

## Interests

- 🥅  Reading
- 🥅  Writing
- 🥅  [Guitar](guitar.md)

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

```ts
//TODO: Add some markdown snippets to demonstrate a basic concept of the overall log
  "Task": {
    //"scope": "javascript,typescript",
    //|taskid|description|i|c|u|createdate|goaldate|
    "prefix": "task",
    "body": [
      "|$CURRENT_YEAR$CURRENT_MONTH$CURRENT_DATE$CURRENT_HOUR$CURRENT_MINUTE$CURRENT_SECOND|$1|${2|4,3,2,1|}|${3|D,C,B,A|}|${4|!,!!,!!!,!!!!|}|$CURRENT_YEAR$CURRENT_MONTH$CURRENT_DATE|$5|"
    ],
    "description": "Task For Markdown"
  },
  //Importance=\"${2|4,3,2,1|}\" Complexity=\"${3|D,C,B,A|}\" Urgency=\"${4|!,!!,!!!,!!!|}
  "Daily Log Item": {
    //"scope": "javascript,typescript",
    //|record_type|action_id|datetime|description|
    //|---|---|---|---|
    "prefix": "dli",
    "body": [
      "|${1|UOW,EMAIL,MTG,CODE,DOC|}|$CURRENT_YEAR$CURRENT_MONTH$CURRENT_DATE$CURRENT_HOUR$CURRENT_MINUTE$CURRENT_SECOND|$CURRENT_HOUR$CURRENT_MINUTE$CURRENT_SECOND|$2|"
    ],
    "description": "Task For Markdown"
  },

  "Question": {
    //"scope": "javascript,typescript",
    "prefix": "QTA",
    "body": ["<QTA>$1", "</QTA>"],
    "description": "Question Element for Meeting, NTD or UOW"
  },
  "Note": {
    //"scope": "javascript,typescript",
    "prefix": "Note",
    "body": ["<Note>$1", "</Note>"],
    "description": "Note Element for NTD or UOW"
  },

  "Daily Log": {
    //"scope": "javascript,typescript",
    "prefix": "DLB",
    "body": [
      "<?xml version='1.0'?>",
      "<?xml-stylesheet type='text/xsl' href='/xsl/formatting.xsl'  ?>",
      "<DailyLog LogDate=\"$1\" CreateDateTime=\"$2\">",
      "<Activities>$3</Activities>",
      "<Tasks>",
      "<Open></Open>",
      "<Completed></Completed>",
      "</Tasks>",
      "</DailyLog>"
    ],
    "description": "Daily Log Body"
  },

  "Open Tasks": {
    //"scope": "javascript,typescript",
    "prefix": "OT",
    "body": [
      "<Open>",
      "<!-- New Tasks can be written at the end of the node. but they should be sorted out once a day.",
      "and updated as Importance and Urgency change  Most Urgent,Most Importanct  should at the top.",
      "Remember that you can live in Urgent  -->",
      "<!--Most Important Most Urgent-->",
      "",
      "<!--Most Important Less Urgent -->",
      "",
      "<!--Most Urgent Not Important-->",
      "",
      "<!--Not Urgent Not Important -->",
      "",
      "</Open>"
    ],
    "description": "Make a new basic task"
  },

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
      "<NTD TaskID=\"$CURRENT_YEAR$CURRENT_MONTH$CURRENT_DATE$CURRENT_HOUR$CURRENT_MINUTE$CURRENT_SECOND\" Importance=\"${2|4,3,2,1|}\" Complexity=\"${3|D,C,B,A|}\" Urgency=\"${4|!,!!,!!!,!!!|}\" CreatedDate=\"$CURRENT_MONTH/$CURRENT_DATE/$CURRENT_YEAR\" GoalDate=\"$CURRENT_MONTH/$CURRENT_DATE/$CURRENT_YEAR\" Category=\"${6|Personal,Family,Professional,DSS|}\">$5</NTD>"
    ],
    "description": "Make a new basic task"
  },
  "Unit of Work": {
    //"scope": "javascript,typescript",
    "prefix": "UOW",
    "body": ["<UOW TaskID=\"$1\" Description=\"$2\">$3</UOW>"],
    "description": "Record a unit of work. Task ID Should tie to a NTD or such."
  },
  "Meeting": {
    //"scope": "javascript,typescript",
    "prefix": "MTG",
    "body": [
      "<Meeting EventID=\"$CURRENT_YEAR$CURRENT_MONTH$CURRENT_DATE$CURRENT_HOUR$CURRENT_MINUTE$CURRENT_SECOND\" Importance=\"${2|4,3,2,1|}\" CreatedDate=\"$CURRENT_MONTH/$CURRENT_DATE/$CURRENT_YEAR\" Topic=\"\" Category=\"${6|Professional,Personal,Family,DSS|}\">$5</Meeting>"
    ],
    "description": "Make a Meeting"
  }

```

## Conclusion

https://www.linkedin.com/in/dan-decasse-04365546
https://img.shields.io/badge/LinkedIn-blue?style=flat&logo=linkedin&labelColor=blue
https://www.linkedin.com/in/dan-decasse-04365546
https://img.shields.io/badge/LinkedIn-Dan%20Decasse-lightgrey


[![Twitter](https://img.shields.io/twitter/follow/:twitterHandle.svg?style=social&label=ddecasse)](https://twitter.com/ddecasse)

<https://img.shields.io/badge/LinkedIn-Dan%20Decasse-lightgrey>