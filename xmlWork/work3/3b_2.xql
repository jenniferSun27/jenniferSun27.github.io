xquery version "1.0" encoding "UTF-8";

<genres>
{
let $us:=doc("songs_group3.xml")//songs/song
let $them:=doc("songs_xienan.xml")/musicList/song
let $union:=(
$us union $them
)
for $genres in distinct-values(
for $genre in $union//genre/@style
return $genre
)
for $genre in $genres
return <genre style="{$genre}">
{  
   for $song in $union 
   where $song//genre/@style=data($genre)
   return
   <song>
	   <songName>{data($song//songName)}{data($song/@name)}</songName>
	   <lanuage>{data($song//language/@type)}{data($song//lyric/@language)}</lanuage>
	   <duration>{data($song//time)}{data($song//duration)}</duration>
	   <score>{data($song//score)}</score>
	</song>

  
}

</genre>
}
</genres>