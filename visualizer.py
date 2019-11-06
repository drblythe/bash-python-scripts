import sys
import pyaudio
from pydub import AudioSegment
from scipy.fftpack import rfft, fft
import pyqtgraph as pg
from pyqtgraph.Qt import QtGui

# Constants
SAMPLE_RATE=44100
CHUNKSIZE=int(SAMPLE_RATE/2)
CHANNELS=2


# Get song data for given file
fileName=str(sys.argv[1])
extension=fileName.split('.')[-1]
song = AudioSegment.from_file(fileName)
raw_data = song._data
song_length = (len(raw_data))
list_data = list(raw_data)


# Start pyaudio stream
p = pyaudio.PyAudio()
stream = p.open(format=pyaudio.paInt16,
        channels=CHANNELS,
        rate=SAMPLE_RATE,
        output=True)

# Set up plot
x_width = range(int(CHUNKSIZE))
pg.setConfigOption('background',"3c3c3c")
plot_widget = pg.plot()
plot_widget.setGeometry(0,0,500,100)
plot_widget.setXRange(0,int(CHUNKSIZE))
plot_widget.setYRange(-100000/3,100000/3)
plot_widget.hideAxis('left')
plot_widget.hideAxis('bottom')

# Cycle through CHUNKSIZE sized bytes while there is still data left
current_byte=0
while ( song_length >= current_byte ):
    # Get FFT data of byte
    spectrum_data = rfft(list_data[current_byte:current_byte+CHUNKSIZE])

    # Plot FFT
    plot_widget.plot(x_width,spectrum_data*.8,pen='c',clear=True)
    pg.QtGui.QApplication.processEvents()

    # Play audio byte
    #stream.write( bytes( raw_data[current_byte:(current_byte+CHUNKSIZE) ] ) )
    stream.write( raw_data[current_byte:(current_byte+CHUNKSIZE) ] )

    # Increment Byte
    current_byte += CHUNKSIZE

