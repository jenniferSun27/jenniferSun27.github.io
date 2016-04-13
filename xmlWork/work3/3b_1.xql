xquery version "1.0" encoding "UTF-8";
let $us:=doc("songs_group3.xml")/songList
let $them:=doc("songs_xienan.xml")/musicList
for $x in $us
return <songList>
  {$x/listNamd}
  {$x/creator}
  {$x/createDate}
  {$x/tags}
  {$x/introduction}
  {$x/playTimes}
  {
   <songs>
	   {
	   for $song in $x/songs/*
	   return <song name="{$song/songName}" id="{$song/@song_id}">
				<basicInfo>
					<singer name="{$song/artist}" id="{$song/artist/@artist_id}">
						<profile/>
						<basicFile>
							<name>{data($song/artist)}</name>
							<country>中国</country>
							<birthday/>
							<represent/>
						</basicFile>
						<experience/>
						<honors/>
					</singer>
					{$song/releaseDate}
					<duration>{data($song/time)}</duration>
					<source type="专辑">{data($song/album)}</source>
					{$song/genre}
					<lyric language="{$song/language/@type}"/>
				</basicInfo>
				<extendInfo>
					<lyricist/>
					<composer/>
					<originalSinger></originalSinger>
				    <quality grade="标准品质MP3"/>
			        <cover></cover>
			        <mv></mv>
			        <award></award>
			        <score>{data($song/score)}</score>
		        </extendInfo>
	   </song>
	   }
	   {
	   for $song at $index in $them/*
	   where $index<=5
	   return $song
	   }
   </songs>
  }
  
</songList>
