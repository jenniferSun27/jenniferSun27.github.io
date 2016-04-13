xquery version "1.0";
<songs>
{
let $songList:=doc("songs_group3.xml")
for $song in $songList//song 
order by $song/releaseDate
return $song 
}
</songs>