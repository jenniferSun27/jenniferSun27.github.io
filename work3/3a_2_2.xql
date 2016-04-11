xquery version "1.0";
(::)
<songs>
{
let $songList:=doc("songs_group3.xml")
for $song at $index in $songList//song 
where $song/language/@type ="¹úÓï"
and $song/time > "04:00"
return if ($index<=3)
then $song 
else ""
}
</songs>