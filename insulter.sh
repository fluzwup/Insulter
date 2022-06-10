#!/usr/bin/bash
# A Shakespearean insult generator for *nix versions with the espeak text to speech synthesizer installed.  Takes an optional count as a command line parameter, and will print and speak the given number of insults.

adj1=("artless" "bawdy" "beslubbering" "bootless" "churlish" "cockered" "clouted" "craven" "currish" "dankish" "dissembling" "droning" "errant" "fawning" "fobbing" "forward" "frothy" "gleeking" "goatish" "gorbellied" "impertinent" "infectious" "jarring" "loggerheaded" "lumpish" "mammering" "mangled" "mewling" "paunchy" "pribbling" "puking" "puny" "qualling" "rank" "reeky" "roguish" "ruttish" "saucy" "spleeny" "spongy" "surly" "tottering" "unmuzzled" "vain" "venomed" "villainous" "warped" "wayward" "weedy" "yeasty")
adj2=("base court" "bat fowling" "beef witted" "beetle headed" "boil brained" "clapper clawed" "clay brained" "common kissing" "crook pated" "dismal dreaming" "dizzy eyed" "doghearted" "dread bolted" "earth vexing" "elf skinned" "fat kidneyed" "fen sucked" "flap mouthed" "fly bitten" "folly fallen" "fool born" "full gorged" "guts griping" "half faced" "hasty witted" "hedge born" "hell hated" "idle headed" "ill breeding" "ill nurtured" "knotty pated" "milk livered" "motley minded" "onion eyed" "plume plucked" "pottle deep" "pox marked" "reeling ripe" "rough hewn" "rude growing" "rump fed" "shard borne" "sheep biting" "spur galled" "swag bellied" "tardy gaited" "tickle brained" "toad spotted" "unchin snouted" "weather bitten")
noun=("apple john" "baggage" "barnacle" "bladder" "boar pig" "bugbear" "bull pizzle" "bum bailey" "canker blossom" "clack dish" "clotpole" "coxcomb" "codpiece" "death token" "dewberry" "flap dragon" "flax wench" "flirt gill" "foot licker" "fustilarian" "giglet" "gudgeon" "haggard" "harpy" "hedge pig" "horn beast" "hugger mugger" "joithead" "lewdster" "lout" "maggot pie" "malt worm" "mammet" "measle" "minnow" "miscreant" "moldwarp" "mumble news" "nut hook" "pigeon egg" "pignut" "puttock" "pumpion" "ratsbane" "scut" "skainsmate" "strumpet" "varlot" "vassal" "whey face" "wagtail")

count=${1}
if [[ $count -lt 1 ]] 
then
	count=10
fi

counter=0

while [ $counter -lt $count ]
do
	insult="Thou art a ${adj1[$RANDOM % ${#adj1[@]}]}, ${adj2[$RANDOM % ${#adj2[@]}]} ${noun[$RANDOM % ${#noun[@]}]}!"
	echo $insult
	espeak "$insult"
	let "counter = $counter + 1"
done

