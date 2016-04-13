<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >

   <xsl:output method="xml" />

   <xsl:param name="pagename">Group Information</xsl:param>
   
   <xsl:template match="/">
      <html>
         <head>
         <title>Data Sheet - <xsl:value-of select="teaminfo/teamname"/>
            </title>
      </head>
      <body background="background.jpg">
      <h1>Team Information </h1>
      <h2>Team:</h2>
         <xsl:apply-templates />
         <xsl:call-template name="backlink"/>
      </body>
      </html>
   </xsl:template>

   
   <xsl:template match="logo">
      <img src="grouplogo.png" style="position: absolute; top: 180px; left: 380px; height: 172px;" />
   </xsl:template>

   
      <xsl:template match="infolist">
       <div style="position: absolute; width: 540px; top: 380px;
         text-align: justify;">
         <xsl:text>Information of Our members :</xsl:text>
         </div>
       <div style="position: absolute; width: 800px; left: 280px; top: 430px;
         text-align: center;">        
         <table border="1">
          <tbody>
		   <tr bgcolor="#C1FFC1">
		    <th>GroupNumber</th>
		    <th>Name</th>
		    <th>Student_ID</th>
			<th>EmailAddress</th>
		   </tr>
		   <xsl:for-each select="personinfo">
		    <tr>
             <td><xsl:value-of select="groupnum"/></td>
             <td><xsl:value-of select="name"/></td>
             <td><xsl:value-of select="stuid"/></td>
             <td><xsl:value-of select="emailaddr"/></td>
            </tr>
           </xsl:for-each>
          </tbody>
	     </table>
	  </div>
   </xsl:template>
   
    <xsl:template match="progresses">
      <div style="position: absolute; width: 540px; top: 580px;
         text-align: justify;">
         <xsl:text>Address of Our Progresses :</xsl:text>
      </div>
     <div style="position: absolute; width: 540px; left:100px;top: 630px;
         text-align: center;">
        <xsl:for-each select="progress">
        <br/>
        <xsl:text> Progress  Name: </xsl:text>
        <xsl:value-of select="proname"/><br/>
        <div style="position: absolute;left:165px;
         text-align: justify;">
        <xsl:text>ProgressAddress:</xsl:text>
        <xsl:value-of select="proaddr"/><br/>
        </div>
        <br/>
        <br/>
       </xsl:for-each>
      </div>
    </xsl:template>

   <xsl:template name="backlink">
      <div style="position: absolute; width: 154px; right: 20px; top: 930px;
         text-align: center;">
         <a href="teaminfo.xml">Back to Group List</a>
      </div>
   </xsl:template>

</xsl:stylesheet>

