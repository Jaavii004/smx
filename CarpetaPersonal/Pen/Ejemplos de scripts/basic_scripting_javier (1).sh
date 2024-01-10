#!/bin/bash

resp8='n'



read -p ">4 Fc?" resp1
read -p "<2 markers in Grand Battery?" resp2
read -p "Fr rout possible if take 2 casualities" resp3
read -p "Weling ton not yet activated?" resp4

if [ $resp1 = "y" -a  $resp2 = "y" -a $resp3 = "y" -a $resp4 = "y" ]; then

     echo "activate wellington"

else 
    read -p "D'Erlon just activated?" resp5
    read -p "D'Erlon just captured la Have Sainte?" resp6
    read -p "Reserve 1+ division markers?" resp7

	if [ $resp5 = "y" ] ; then
		if [ $resp6 = "y"  -a $resp7 = "y" ]; then
 		    echo "Activate Rserve Action 2 to cancel capture"
		else
		    read -p "Uxbridge 1+ division markers?" resp8
		    read -p "Reille just captured Hougoumont?" resp9
		    if [ $resp8 = "y" ] ; then
		        echo "activate Uxbridge counterattack"
		    fi
		fi
	fi
	if [ $resp5 != "y" -o $resp8 != "y" ] ; then
		read -p "Reille juts capture Hougoumont? " resp10
                read -p "Reserve 1+ division markers?" resp11
		if [ $resp10 = "y" -a $resp11 = "y" ] ; then 
                    echo "Activate Reserve action 3 to cancel capture "
                else
                read -p "Hill just took casualities?" resp12
                read -p "Hill <2division markers?" resp13
                read -p "reserve 2+ division maker?" resp14
                    if [ $resp12 = "y" -a $resp13 = "y" -a $resp14 = "y" ] ; then 
                        echo "activate reserve action 1 to cancel losses of hill or orange (as applocable)"
                    else
                    read -p "Orang e just took casualities?" resp15
                    read -p "orange <3 division markers?" resp16
                    read -p "reserve 2+ division marker?" resp17
                    if [ $resp15 = "y" -a $resp16 = "y" -a $resp17 = "y" ] ; then
                        echo "activate reserve action 1 to cancel losses of hill or orange (as applocable)"
                    else
                    read -p "Hill in square?" resp18
                    read -p "EITHER Ney's cavalry Charge not activate OR Kellerman 0 divisions" resp19
                    if [ $resp18 = "y" -a $resp19 = "y" ] ; then 
                        echo "Activate Hill or Orange (as applicable) to redeploy to line"
                    else
                    read -p "Orange in square?" resp20
                    read -p "EITHER Ney's cavalry change not active OR Mihauld 0 divisions" resp21
                    if [ $resp20 = "y" -a $resp21 = "y" ] ; then 
                        echo "Activate Hill or Orange (as applicable) to redeploy to line"
                    else
                    read -p "AC>4" resp22
                    read -p "Uxbridge 1+ division markers" resp23
                    read -p "Any cubes in GB?" resp24
                    if [ $resp22 = "y" -a $resp23 = "y" -a $resp24 = "y" ]; then
                        echo "Activate Uxbridge"
                    else
                        read -p "<4 PD on BF" resp25
                        if [ $resp25 = "y" ]; then
                            echo "Activate Blucher"
                        else
                            read -p "Orange 5 division markers?" resp26
                            read -p "Orange in square?" resp27
                            if [ $resp26 = "y" ]; then
                            	if [ $resp27 = "y" ]; then
                                echo "Activate Bluncher"
                                else
                                    echo "Activate orange"
				fi
                            else
                                echo "Activate Blucher"
                            fi
                        fi
                    fi
                    fi

                    fi
                    
                    
                    fi
                    fi
                fi
                
	fi


fi





exit 0
 












