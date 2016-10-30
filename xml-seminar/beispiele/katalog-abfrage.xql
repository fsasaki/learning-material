xquery version "1.0";

let $input := 
<katalog typ="Ersatzteilliste">
 <eintrag nummer="1">
  <name>Tragfläche linke Seite</name>
  <status>verfügbar</status> 
 </eintrag> 
 <eintrag nummer="2">
  <name>Tragfläche rechte Seite</name>
  <status>nicht verfügbar</status> 
 </eintrag> 
</katalog>
let $numberOfEntrys := count($input/eintrag)
let $numberOfAvailableEntries := count($input/eintrag[status='verfügbar'])
let $numberOfNonAvailableEntries := count($input/eintrag[status='nicht verfügbar'])
return
("Katalog - Übersicht",
"&#xA;Zahl der katalogisierten Einheiten: ", $numberOfEntrys,
"&#xA;Zahl der verfügbaren Einheiten: ", $numberOfAvailableEntries,
"&#xA;Zahl der nicht verfügbaren Einheiten: ", $numberOfAvailableEntries
)
