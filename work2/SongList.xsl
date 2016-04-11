<xsl:stylesheet
   version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns="http://www.w3.org/1999/xhtml"
   >

   <xsl:output method="xml" />

   <xsl:param name="pagename">SongList</xsl:param>
   
   <xsl:template match="/">
		<html>
			<body background="back.jpg">
				<span style="height:auto;weight:auto;float:none">
				<xsl:apply-templates/> 
				</span>
			</body>
		</html>
	</xsl:template>
   
   <xsl:template match="listName">
      <span style="font-size:60pt;color:#b4bcf0;font-family: 微软雅黑;position:relative;left:20px">
			<xsl:value-of select="."/>
	  </span>
	  <br />
   </xsl:template>

   <xsl:template match="creator/user/name">
      <span style="font-size:30pt;color:#6b6b5e;font-family: 微软雅黑;font-style:oblique;position:absolute;top:100px;left:20px;">
			<xsl:value-of select="."/>
	  </span>
   </xsl:template>
   
   <xsl:template match="createDate">
      <span style="font-size:15pt;color:#b9b9b0;font-family: 微软雅黑;font-style:italic;position:absolute;top:120px;left:170px;">
			<xsl:value-of select="."/>
	  </span>
   </xsl:template>
   
   <xsl:template match="playTimes">
      <span style="font-size:12pt;color:#edece9;font-family: 微软雅黑;font-style:italic;position:absolute;top:125px;left:310px;">
			<xsl:value-of select="."/>
	  </span>
   </xsl:template>
   
   <xsl:template match="tags">
      <span style="height: 30px;width: 180px;background-color: #f0eeb4;padding-top: 5px;padding-left: 5px;padding-bottom:  5px;position:absolute;top:175px;left:20px;">
		  <xsl:for-each select="tag">
				 <span style="font-size:18pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 50px;background-color: #b6b252;position:relative;">
			           <xsl:value-of select="."/>
	             </span>
		  </xsl:for-each>
	  </span>
   </xsl:template>
   
   <xsl:template match="introduction">
      <span style="width: 700px;background-color: #f3e1b7;font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;padding-top: 5px;padding-left: 5px;padding-bottom: 5px;position:absolute;top:240px;left:20px;">
			<xsl:value-of select="."/>
	  </span>
   </xsl:template>
   
   <xsl:template match="songs">
      <table style="width: 760px;background-color: #e1f0d8;padding-top: 5px;padding-left: 5px;padding-bottom: 5px;position:absolute;top:320px;left:20px;">
			<xsl:for-each select="song">
				<xsl:sort select="artist" />
				<xsl:if test="@song_id &gt; 1000000">
				<tr style="display: block;width: 690px;background-color: #caebb8;position: relative;margin: 5px 5px 5px    5px;font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;">
				    <xsl:choose>
						<xsl:when test="songName=album">
							<td style="font-size:12pt;color:#ff00ff;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #e1f0d8;position:relative;margin-right: 5px;display: inline-block;"><xsl:value-of select="songName"/></td>
						</xsl:when>
						<xsl:otherwise>
							<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #e1f0d8;position:relative;margin-right: 5px;display: inline-block;"><xsl:value-of select="songName"/></td>
						</xsl:otherwise>
					</xsl:choose>
						<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #e1f0d8;position:relative;margin-right: 5px;display: inline-block;"><xsl:value-of select="songName"/></td>
						<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #cdebbc;margin-right: 5px;position:absolute;left:170px;padding-left: 4px;display: inline-block;"><xsl:value-of select="artist"/></td>
						<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #bce0a8;margin-right: 5px;position:absolute;left:340px;padding-left: 4px;display: inline-block;"><xsl:value-of select="time"/></td>
						<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #b3d99e;margin-right: 5px;position:absolute;left:520px;padding-left: 4px;display: inline-block;"><xsl:value-of select="album"/></td>
				</tr>
				</xsl:if>
	        </xsl:for-each>
	        <br/>
	        <xsl:for-each select="song">
				<xsl:sort select="artist" />
				<xsl:if test="@song_id &lt; 1000000">
				<tr style="display: block;width: 690px;background-color: #caebb8;position: relative;margin: 5px 5px 5px    5px;font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;">
				    <xsl:choose>
						<xsl:when test="songName=album">
							<td style="font-size:12pt;color:#ff00ff;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #e1f0d8;position:relative;margin-right: 5px;display: inline-block;"><xsl:value-of select="songName"/></td>
						</xsl:when>
						<xsl:otherwise>
							<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #e1f0d8;position:relative;margin-right: 5px;display: inline-block;"><xsl:value-of select="songName"/></td>
						</xsl:otherwise>
					</xsl:choose>
						<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #e1f0d8;position:relative;margin-right: 5px;display: inline-block;"><xsl:value-of select="songName"/></td>
						<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #cdebbc;margin-right: 5px;position:absolute;left:170px;padding-left: 4px;display: inline-block;"><xsl:value-of select="artist"/></td>
						<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #bce0a8;margin-right: 5px;position:absolute;left:340px;padding-left: 4px;display: inline-block;"><xsl:value-of select="time"/></td>
						<td style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 20px;width: 170px;background-color: #b3d99e;margin-right: 5px;position:absolute;left:520px;padding-left: 4px;display: inline-block;"><xsl:value-of select="album"/></td>
				</tr>
				</xsl:if>
	        </xsl:for-each>
	  </table>
   </xsl:template>
   
   <xsl:template match="collectors">
	    <span style="height:20px;width:710px;background-color: #cbf9ea;padding-top: 5px;padding-left:5px;padding-bottom: 5px;position:absolute;left:20px;top:1100px;">
	        <b>Collectors: </b>
			<xsl:for-each select="user">
				<span style="font-size:12pt;color:#6b6b5e;font-family: 微软雅黑;height: 15px;width: 50px;background-color: #afdfd0;position:relative;margin: 5px 5px 5px 5px;"><xsl:value-of select="name"/></span>
			</xsl:for-each>
	    </span>
   </xsl:template>
</xsl:stylesheet>

