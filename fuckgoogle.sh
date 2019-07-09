#!/bin/bash

# List of Youtube channels to follow
list=(
"DIY Guitar Pedals" https://www.youtube.com/user/chromespherecom/videos
"tripcode" https://www.youtube.com/channel/UCZrrEuHiQjN2CUo84g5tk7w/videos
"bisqwit" https://www.youtube.com/user/Bisqwit/videos
"Whats A Creel" https://www.youtube.com/user/WhatsACreel/videos
"The 8 Bit Guy" https://www.youtube.com/user/adric22/videos
"Plastic Recycling Guy" https://www.youtube.com/user/hakopdetak/videos
"Jeri Ellsworth" https://www.youtube.com/user/jeriellsworth/videos
"Mark Jay" https://www.youtube.com/channel/UC2W0aQEPNpU6XrkFCYifRFQ/videos
"Laptop Retrospective" https://www.youtube.com/channel/UC-wmf-Avorzz9QPKzdYFgeg/videos
"AVGN" https://www.youtube.com/user/JamesNintendoNerd/videos
"Sebi's Tech Reviews" https://www.youtube.com/user/SebisGameReviews/videos
"Making Games with Ben" https://www.youtube.com/user/makinggameswithben/videos
"javidx9" https://www.youtube.com/channel/UC-yuWVUplUJZvieEligKBkA/videos
"Wolfgang" https://www.youtube.com/channel/UCsnGwSIHyoYN0kiINAGUKxg/videos
"Hillside Hermitage" https://www.youtube.com/channel/UCKejmWAt_kNpRMq5gQEGAqw/videos
"The Kiseki Nut" https://www.youtube.com/user/Lasadora/videos
"Moe Shop" https://www.youtube.com/channel/UCcKTRoHPP2hPaom63QGaiBw/videos
"Regular Car Reviews" https://www.youtube.com/user/RegularCars/videos
"The Cherno Project" https://www.youtube.com/user/TheChernoProject/videos
"Mathologer" https://www.youtube.com/channel/UC1_uAIS3r8Vu6JjXWvastJg/videos
"Ben Eater" https://www.youtube.com/user/eaterbc/videos
"Matthew Matosis" https://www.youtube.com/user/Matthewmatosis/videos
"Jason Turner" https://www.youtube.com/user/lefticus1/videos
"Mike Swift" https://www.youtube.com/channel/UCBRYU9uye8e-ZuWQMPBAoYA/videos
"William Fiset" https://www.youtube.com/user/purpongie/videos
)

bg="#f5f5f5"
fg="#1f1f1f"

count=@
selection=$(
for i in "${list[@]}"; do
	printf "$i";
	printf "\n"
done | dmenu -i -l 20 -nb $bg -nf $fg -sb $fg -sf $bg -fn "SF UI Display Medium-8"
)

if [ -n "$selection" ]; then
	firefox $selection
fi
