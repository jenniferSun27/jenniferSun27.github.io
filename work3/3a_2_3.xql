xquery version "1.0";
(:查询时长小于5分的排名最高的前五首民谣歌:)
<songs>
{
let $songList:=( 
for $song in doc("songs_group3.xml")//song 
where $song/genre/@style ="Folk"
and $song/time < "05:00"
order by $song/score descending
return $song
)
for $song at $index in $songList 
where $index<=5
return <song index="{$index}">{$song/*}</song>
}
</songs>