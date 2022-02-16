#SECOND PROJECT

NAME[0]="Zara"
NAME[1]="Qadir"
NAME[2]="Mahnaz"
NAME[3]="Ayan"
NAME[4]="Daisy"
echo "First Index: ${NAME[0]}"
echo "Second Index: ${NAME[1]}"
echo "First Method: ${NAME[*]}"
echo "Second Method: ${NAME[@]}"



#$./test.sh
#First Index: Zara
#Second Index: Qadir
#First Method: Zara Qadir Mahnaz Ayan Daisy
#Second Method: Zara Qadir Mahnaz Ayan Daisy
