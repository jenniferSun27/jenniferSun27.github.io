(:查询时长小于5分钟的，评分排名前十的国语民谣:)
xquery version "1.0";
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
where $genre="Folk"
return <genre style="{$genre}">
{  let $set:=(
   for $song in $union 
   where $song//genre/@style=data($genre)
   order by number($song//score) descending
   return
   <song>
	   <songName>{data($song//songName)}{data($song/@name)}</songName>
	   <language>{data($song//language/@type)}{data($song//lyric/@language)}</language>
	   <duration>{data($song//time)}{data($song//duration)}</duration>
	   <score>{data($song//score)}</score>
	</song>
    )
    for $r at $index in $set
    where $r//language="国语" and $r//duration<"05:00"
    and $index<=10
    return $r
    
}

</genre>
}
</genres>