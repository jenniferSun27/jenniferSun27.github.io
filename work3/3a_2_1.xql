xquery version "1.0";
(:查询2010年以后发布的歌曲并且按照评分降序排序:)
<songs>
{
let $songList:=doc("songs_group3.xml")
for $song in $songList//song 
where $song/releaseDate > "2010-01-01"
order by $song/score descending
return $song 
}
</songs>