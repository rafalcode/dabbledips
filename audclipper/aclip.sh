# this was a first attempt
# loshuf.l was a shuiffled listing of all my opus files.
COU=0
for i in `head -2000 loshuf.l`; do
    # only taking the first 2000. There's about 35K of them so this is about 6% of them
    # # surprisingly  it was fairly fast, not sure if that was because of -ss 5 or what.
    COU=$(($COU+1))
    name=`printf "A%05i.mp3" $COU`
    # echo "ffmpeg -i $i -ss 5 -t 5 -codec:a libmp3lame -qscale:a 5 tmp/$name"
    ffmpeg -i $i -ss 5 -t 5 -codec:a libmp3lame -qscale:a 5 tmp/$name
done

# so were there any problems with this? Well, 4 mp3's were empty or deficient.
# these need deleting

# a later problem will be levels some of the crap (very few mind you) I have has a very levels

# then you generate a listing l.l but with the file 'etc' per line
# you'll need 
# for  i in *; do echo "file 'tmp/$i"\';done >>../l.l
# for that.
#
# and then to put them together
# ffmpeg -f concat -i l.l -c copy all.mp3
