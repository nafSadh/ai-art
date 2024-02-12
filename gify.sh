#! /bin/bash

# Author:       Danilo 'danix' Macri
# Author URI:   http://danixland.net
# Script URI:   http://danixland.net/?p=3545
# License:      GPL2
# License URI:  https://www.gnu.org/licenses/gpl-2.0.html

#--------------------------------------------------------------------------------#
#                                                                                #
#             GIFY.SH - CREATE ANIMATED GIFS OUT OF A BUNCH OF IMAGES            #
#                                                                                #
# Use this script to create animated looping gifs from a bunch of images. You    #
# just need to arrange all the images you want to use inside a folder and then   #
# launch this script with a few options and you'll have your gif within seconds. #
#                                                                                #
# This script uses mogrify and convert from the IMAGEMAGIK suite to deliver the  #
# gifs. This script can proportionally resize your images to help you create a   #
# lighter file.                                                                  #
#                                                                                #
#--------------------------------------------------------------------------------#

# ERROR & EXIT STATUSES
SHOWHELP=61
USERABORTED=62

E_INTERROR=71
E_NOOPTS=72
E_NOARGS=73
E_FILEXISTS=74
E_NOIMAGES=75
E_UNKNOWNOPT=76

# TOOLS
PWD=$(pwd)
MOGRIFY=$(which mogrify)
CONVERT=$(which convert)

# we need mogrify and convert from the imagemagik toolset for this script to work
if [[ ! -x $MOGRIFY || ! -x $CONVERT ]]; then
    showerror missingdeps
    exit $E_MISSINGDEPS
fi


# showhelp
showhelp ()
{
case $1 in
    resize )
        echo "USAGE: $(basename $0) -r | --resize [width] [extension]"
        ;;
    gif )
        echo "USAGE: $(basename $0) -g | --gif [delay] [extension] [output file name]"
        ;;
    * )
                #|----------------------- TEXT MAX WIDTH - 80 CHARS ----------------------------|
        echo -e "$(basename $0) - create animated gifs from images inside current directory"
        echo -e "USAGE: $(basename $0) <option> [arguments]"
        echo -e "\twhere <option> is one between:";echo
        echo -e "\t-r | --resize [width] [extension]"
        echo -e "\t\tresizes all the images matching the extension in the current folder to"
        echo -e "\t\tthe width specified as argument.";echo
        echo -e "\tg | --gif [delay] [extension] [output file name]"
        echo -e "\t\tcreates the gif file using all the images in the current folder."
        echo
        echo -e "EXAMPLES:"
        echo -e "$(basename $0) --resize 900 jpg"
        echo -e "\twill resize all jpg images in the folder to 900px wide and mantain the"
        echo -e "\taspect ratio of the original images"
        echo
        echo -e "$(basename $0) --gif 8 jpg france"
        echo -e "\twill create a looping gif named france.gif using all the jpg files found"
        echo -e "\tin the current folder and passing a tick delay of 8 between frames".
        echo
        ;;
esac
}

# showerror
showerror ()
{
    if [ -z $1 ];then
        echo "INTERNAL ERROR - ABORTING"; echo
        exit $E_INTERROR
    fi
    case $1 in
        unknownopt)
            echo "unknown option. Exiting."; echo
        ;;
        noopts)
            echo "you didn't specify any options for the script to run. Exiting."; echo
        ;;
        noargs)
            echo "you didn't specify any arguments for this option. Exiting."; echo
        ;;
        filexists)
            echo "the file you want to write already exists. Exiting."; echo
        ;;
        noimages)
            echo "at least two files must exist within $PWD with the"
            echo "specified extension. Exiting"; echo
        ;;
        missingdeps)
            echo "$(basename $0) requires both mogrify and convert from"
            echo "the imagemagik tool suite. Install imagemagik using your"
            echo "favourite package manager and then run this script again. Exiting."; echo
    esac
}

##### MAIN #####
if [ $# -eq 0 ];then
    showerror noopts
    showhelp
    exit $E_NOOPTS
else

    while [ $# -gt 0 ];do
        case $1 in
            -h|--help)
                showhelp
                exit $SHOWHELP
            ;;
            -r|--resize)
                WIDTH=$2
                EXT=$3
                shift
                if [[ -z $WIDTH || -z $EXT ]];then
                    showhelp resize
                    showerror noargs
                    exit $E_NOARGS
                fi
                IMAGES="$(ls -1 *.$EXT 2>/dev/null | wc -l)"
                if [[ $IMAGES == 0 ]]; then
                    showerror noimages
                    exit $E_NOIMAGES
                fi
                clear
                COUNT="$(ls -1 *.$EXT 2>/dev/null | wc -l)"
                echo "you're going to resize all $COUNT .$EXT images inside $PWD at a fixed width of ${WIDTH}px"
                read -p "do you wish to continue? [y/n] " -n 1 -r; echo
                if [[ ! $REPLY =~ ^[Yy]$ ]]
                then
                    exit $USERABORTED
                else
                $MOGRIFY -resize $WIDTH *.$EXT
                exit 0
                fi
            ;;
            -g|--gif)
                DELAY=$2
                EXT=$3
                OUTPUT=$4
                shift
                if [[ -z $DELAY || -z $EXT || -z $OUTPUT ]];then
                    showhelp gif
                    showerror noargs
                    exit $E_NOARGS
                elif [[ -f ${OUTPUT}.gif ]]; then
                    showerror filexists
                    exit $E_FILEXISTS
                fi
                IMAGES="$(ls -1 *.$EXT 2>/dev/null | wc -l)"
                if [[ $IMAGES == 0 ]]; then
                    showerror noimages
                    exit $E_NOIMAGES
                fi
                clear
                COUNT="$(ls -1 *.$EXT 2>/dev/null | wc -l)"
                echo "you're going to create a looping gif named ${OUTPUT}.gif"
                echo "out of all the $COUNT $EXT files inside $PWD with a tick"
                echo "delay of $DELAY/100 of a second"; echo
                read -p "do you wish to continue? [y/n] " -n 1 -r; echo
                if [[ ! $REPLY =~ ^[Yy]$ ]]
                then
                    exit $USERABORTED
                else
                    $CONVERT -delay $DELAY *.$EXT -loop 0 ${OUTPUT}.gif
                    exit 0
                fi
            ;;
            *)
                showerror unknownopt
                showhelp
                exit $E_UNKNOWNOPT
        esac
        shift
    done
fi
