from mutagen.mp3 import MP3
from mutagen.id3 import ID3, APIC, error
import sys
mp3file=sys.argv[1]
audio = MP3(mp3file, ID3=ID3)

try:
   audio.add_tags()
except error:
   pass

audio.tags.add(
   APIC(
      encoding=1,
      mime='image/png',
      type=3,
      desc=u'Cover',
      data=open('albumart.jpg').read()
   )
)
audio.save()
