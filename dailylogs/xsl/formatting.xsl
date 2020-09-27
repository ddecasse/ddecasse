<?xml version="1.0"?>

<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="../stylesheets/style.css" type="text/css"/>
        <script type="text/javascript" src="/js/main.js"></script>
        <script type="text/javascript" src="/js/cookiemonster.js"></script>


        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      </head>

      <body>


        <div class="container">
          <h2>Activity Log and Task List</h2>
          <h3 id="logdate">Log Date : <xsl:value-of select="DailyLog/@LogDate"/>
          </h3>
          <h4> Document Creation Time : <xsl:value-of select="DailyLog/@CreateDateTime"/>
          </h4>
        <p>
          <xsl:variable name="logfiledate" select="DailyLog/@LogDate"/>
        <!--  Current Visit Started <input type="date"   id="CurrentVisitStarted" ></input>-->

      <p id="GFG_DOWN"
       style="color: green; 
              font-size: 24px;  
              font-weight: bold;"> 
    </p>
      </p>
          <ul class="nav nav-tabs">
            <li class="active">
              <a data-toggle="tab" href="#home">Home</a>
            </li>
            <li>
              <a data-toggle="tab" href="#menu1">Activity Log</a>
            </li>
            <li>
              <a data-toggle="tab" href="#menu2">Open Tasks</a>
            </li>
            <li>
              <a data-toggle="tab" href="#menu3">Completed Tasks</a>
            </li>
            <li>
              <a data-toggle="tab" href="#menu4">Certifications</a>
            </li>
          </ul>

          <div class="tab-content">
            <div id="home" class="tab-pane fade in active">


              <ul class="nav nav-tabs">
                <li>
                  <a href="https://todoist.com/app/#start">todoist</a>
                </li>
                <li>
                  <a href="https://www.linkedin.com/feed/">LinkedIn</a>
                </li>
                <li>
                  <a href="https://www.freecodecamp.org/ddecasse">freeCodeCamp profile</a>
                </li>
                <li>
                  <a href="https://udemy-certificate.s3.amazonaws.com/pdf/UC-a09309b4-c068-4ba0-be27-5bb2428b15f8.pdf">Udemy  MSSQL 70-461  </a>
                </li>
                <li>
                  <a href="https://udemy-certificate.s3.amazonaws.com/pdf/UC-4d8f61c5-bf23-4094-a36c-e0daf1ea41d4.pdf">Udemy MSSQL 70-463 </a>
                </li>
                <li>
                  <a href="https://udemy-certificate.s3.amazonaws.com/pdf/UC-ed5938b7-38f0-4579-a4cb-ed0e83754c03.pdf">Udemy Dynamics</a>
                </li>
              </ul>

            </div>

            <div id="menu1" class="tab-pane fade">
              <h5>Today's Activity Log  </h5>
              <table border="1" id="tbluow">
                <tr bgcolor="#CCCCCC">
                  <th>TaskID</th>
                  <th>Description</th>
                  <th>Importance</th>

                  <th>Complexity</th>
                  <th>Urgency</th>
                  <th>Start time </th>
                  <th>End Time </th>
                </tr>
                <xsl:for-each select="/DailyLog/Activities/UOW">
                  <tr>
                    <td>
                      <xsl:value-of select="@TaskID"/>
                    </td>
                    <td>
                      <xsl:value-of select="@Description"/>
                    </td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>
                      <xsl:value-of select="@StartTime"/>
                    </td>
                    <td>
                      <xsl:value-of select="@EndTime"/>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>
            </div>

            <div id="menu2" class="tab-pane fade">
              <h5> Open  Tasks  </h5>
              <table border="1" id="tbltasks">
                <tr bgcolor="#9acd32">


                  <th>TaskID</th>
                  <th>Description</th>
                  <th title="Importance">I</th>
                  <th title="Complexity"> C</th>
                  <th title="Urgency">U</th>
                  <th>GoalDate</th>
                  <th>CreatedDate</th>
                </tr>
                <xsl:for-each select="/DailyLog/Tasks/Open/NTD">
                  <tr class="tasklogentry">
                    <td>
                      <xsl:attribute name="title">
                        <xsl:value-of select="@Category"/>
                      </xsl:attribute>
                      <xsl:value-of select="@TaskID"/>
                    </td>
                    <td>
                      <xsl:value-of select="text()"/>
                    </td>
                    <td>
                      <xsl:value-of select="@Importance"/>
                    </td>
                    <td>
                      <xsl:value-of select="@Complexity"/>
                    </td>
                    <td>
                      <xsl:value-of select="@Urgency"/>
                    </td>
                    <td class="goaldate">
                      <xsl:value-of select="@GoalDate"/>
                    </td>
                    <td class="createddate">
                      <xsl:value-of select="@CreatedDate"/>
                    </td>

                  </tr>
                </xsl:for-each>
              </table>
            </div>

            <div id="menu3" class="tab-pane fade">

              <h5> Completed Tasks</h5>
              <table border="1">
                <tr bgcolor="#9acd32">
                  <th>TaskID</th>
                  <th>Description</th>
                  <th>Importance</th>

                  <th>Complexity</th>
<th>Urgency</th>
                  <th>GoalDate</th>
                  <th>CreateDate</th>
                </tr>
                <xsl:for-each select="/DailyLog/Tasks/Completed/NTD">
                  <tr>
                    <td>
                      <xsl:value-of select="@TaskID"/>
                    </td>
                    <td>
                      <xsl:value-of select="text()"/>
                    </td>
                    <td>
                      <xsl:value-of select="@Importance"/>
                    </td>

                    <td>
                      <xsl:value-of select="@Complexity"/>
                    </td>
                        <td>
                      <xsl:value-of select="@Urgency"/>
                    </td>
                    <td>
                      <xsl:value-of select="@GoalDate"/>
                    </td>
                    <td>
                      <xsl:value-of select="@CreatedDate"/>
                    </td>

                  </tr>
                </xsl:for-each>
              </table>
            </div>



            <div id="menu4" class="tab-pane fade">

              <h5> Completed Tasks</h5>
              <table border="1">
                <tr bgcolor="#9acd32">
                  <th>TaskID</th>
                  <th>Description</th>
                  <th>Importance</th>

                  <th>Complexity</th>
                  <th>Urgency</th>
                  <th>GoalDate</th>
                  <th>CreateDate</th>
                </tr>
                <xsl:for-each select="/DailyLog/Tasks/Completed/NTD">
                  <tr>
                    <td>
                      <xsl:value-of select="@TaskID"/>
                    </td>
                    <td>
                      <xsl:value-of select="text()"/>
                    </td>
                    <td>
                      <xsl:value-of select="@Importance"/>
                    </td>

                    <td>
                      <xsl:value-of select="@Complexity"/>
                    </td>
                    <td>
                      <xsl:value-of select="@Urgency"/>
                    </td>
                    <td>
                      <xsl:value-of select="@GoalDate"/>
                    </td>
                    <td>
                      <xsl:value-of select="@CreatedDate"/>
                    </td>

                  </tr>
                </xsl:for-each>
              </table>
            </div>

          </div>

        </div>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>