#!/usr/bin/env python2
##################################################
# GNU Radio Python Flow Graph
# Title: Wifi Ofdm Tx
# Generated: Sat Jun  4 00:24:10 2016
##################################################

if __name__ == '__main__':
    import ctypes
    import sys
    if sys.platform.startswith('linux'):
        try:
            x11 = ctypes.cdll.LoadLibrary('libX11.so')
            x11.XInitThreads()
        except:
            print "Warning: failed to XInitThreads()"

from PyQt4 import Qt
from gnuradio import blocks
from gnuradio import eng_notation
from gnuradio import gr
from gnuradio import qtgui
from gnuradio.eng_option import eng_option
from gnuradio.filter import firdes
from gnuradio.qtgui import Range, RangeWidget
from optparse import OptionParser
import IFFT_V
import OFDMPreamble
import OFDM_Cyclic_Prefix
import QPSK_mod
import Viterbi_Encoder
import my_interleaver
import sip
import sys
import vamsi_scram


class WIFI_OFDM_TX(gr.top_block, Qt.QWidget):

    def __init__(self):
        gr.top_block.__init__(self, "Wifi Ofdm Tx")
        Qt.QWidget.__init__(self)
        self.setWindowTitle("Wifi Ofdm Tx")
        try:
             self.setWindowIcon(Qt.QIcon.fromTheme('gnuradio-grc'))
        except:
             pass
        self.top_scroll_layout = Qt.QVBoxLayout()
        self.setLayout(self.top_scroll_layout)
        self.top_scroll = Qt.QScrollArea()
        self.top_scroll.setFrameStyle(Qt.QFrame.NoFrame)
        self.top_scroll_layout.addWidget(self.top_scroll)
        self.top_scroll.setWidgetResizable(True)
        self.top_widget = Qt.QWidget()
        self.top_scroll.setWidget(self.top_widget)
        self.top_layout = Qt.QVBoxLayout(self.top_widget)
        self.top_grid_layout = Qt.QGridLayout()
        self.top_layout.addLayout(self.top_grid_layout)

        self.settings = Qt.QSettings("GNU Radio", "WIFI_OFDM_TX")
        self.restoreGeometry(self.settings.value("geometry").toByteArray())

        ##################################################
        # Variables
        ##################################################
        self.sample_rate_Rx = sample_rate_Rx = 20e6
        self.samp_rate_Tx = samp_rate_Tx = 20e6
        self.TxGain = TxGain = 25
        self.RxGain = RxGain = 20
        self.Frequency = Frequency = 2.406e9

        ##################################################
        # Blocks
        ##################################################
        self.vamsi_scram_scram_cc_1 = vamsi_scram.scram_cc()
        self.qtgui_sink_x_2 = qtgui.sink_c(
        	1024, #fftsize
        	firdes.WIN_BLACKMAN_hARRIS, #wintype
        	Frequency, #fc
        	samp_rate_Tx, #bw
        	"", #name
        	True, #plotfreq
        	True, #plotwaterfall
        	True, #plottime
        	True, #plotconst
        )
        self.qtgui_sink_x_2.set_update_time(1.0/10)
        self._qtgui_sink_x_2_win = sip.wrapinstance(self.qtgui_sink_x_2.pyqwidget(), Qt.QWidget)
        self.top_layout.addWidget(self._qtgui_sink_x_2_win)
        
        self.qtgui_sink_x_2.enable_rf_freq(False)
        
        
          
        self.my_interleaver_vamsi_interleaver_cc_0 = my_interleaver.vamsi_interleaver_cc(96)
        self.blocks_file_source_0 = blocks.file_source(gr.sizeof_char*1, "/home/intel-nuc/My-Blocks/GRC/input.dat", True)
        self.Viterbi_Encoder_Viterbi_vamsi_cc_0 = Viterbi_Encoder.Viterbi_vamsi_cc()
        self._TxGain_range = Range(0, 400, 1, 25, 200)
        self._TxGain_win = RangeWidget(self._TxGain_range, self.set_TxGain, "TxGain", "counter_slider", float)
        self.top_layout.addWidget(self._TxGain_win)
        self._RxGain_range = Range(0, 400, 1, 20, 200)
        self._RxGain_win = RangeWidget(self._RxGain_range, self.set_RxGain, "RxGain", "counter_slider", float)
        self.top_layout.addWidget(self._RxGain_win)
        self.QPSK_mod_Vamsi_QPSK_mod_cf_0 = QPSK_mod.Vamsi_QPSK_mod_cf(96)
        self.OFDM_Cyclic_Prefix_vamsi_OFDMCP_ff_0 = OFDM_Cyclic_Prefix.vamsi_OFDMCP_ff(64, 16)
        self.OFDMPreamble_vamsi_OFDMPreamble_ff_0 = OFDMPreamble.vamsi_OFDMPreamble_ff(80)
        self.IFFT_V_IFFT_ff_0 = IFFT_V.IFFT_ff(64)

        ##################################################
        # Connections
        ##################################################
        self.connect((self.IFFT_V_IFFT_ff_0, 0), (self.OFDM_Cyclic_Prefix_vamsi_OFDMCP_ff_0, 0))    
        self.connect((self.OFDMPreamble_vamsi_OFDMPreamble_ff_0, 0), (self.qtgui_sink_x_2, 0))    
        self.connect((self.OFDM_Cyclic_Prefix_vamsi_OFDMCP_ff_0, 0), (self.OFDMPreamble_vamsi_OFDMPreamble_ff_0, 0))    
        self.connect((self.QPSK_mod_Vamsi_QPSK_mod_cf_0, 0), (self.IFFT_V_IFFT_ff_0, 0))    
        self.connect((self.Viterbi_Encoder_Viterbi_vamsi_cc_0, 0), (self.my_interleaver_vamsi_interleaver_cc_0, 0))    
        self.connect((self.blocks_file_source_0, 0), (self.vamsi_scram_scram_cc_1, 0))    
        self.connect((self.my_interleaver_vamsi_interleaver_cc_0, 0), (self.QPSK_mod_Vamsi_QPSK_mod_cf_0, 0))    
        self.connect((self.vamsi_scram_scram_cc_1, 0), (self.Viterbi_Encoder_Viterbi_vamsi_cc_0, 0))    

    def closeEvent(self, event):
        self.settings = Qt.QSettings("GNU Radio", "WIFI_OFDM_TX")
        self.settings.setValue("geometry", self.saveGeometry())
        event.accept()

    def get_sample_rate_Rx(self):
        return self.sample_rate_Rx

    def set_sample_rate_Rx(self, sample_rate_Rx):
        self.sample_rate_Rx = sample_rate_Rx

    def get_samp_rate_Tx(self):
        return self.samp_rate_Tx

    def set_samp_rate_Tx(self, samp_rate_Tx):
        self.samp_rate_Tx = samp_rate_Tx
        self.qtgui_sink_x_2.set_frequency_range(self.Frequency, self.samp_rate_Tx)

    def get_TxGain(self):
        return self.TxGain

    def set_TxGain(self, TxGain):
        self.TxGain = TxGain

    def get_RxGain(self):
        return self.RxGain

    def set_RxGain(self, RxGain):
        self.RxGain = RxGain

    def get_Frequency(self):
        return self.Frequency

    def set_Frequency(self, Frequency):
        self.Frequency = Frequency
        self.qtgui_sink_x_2.set_frequency_range(self.Frequency, self.samp_rate_Tx)


if __name__ == '__main__':
    parser = OptionParser(option_class=eng_option, usage="%prog: [options]")
    (options, args) = parser.parse_args()
    from distutils.version import StrictVersion
    if StrictVersion(Qt.qVersion()) >= StrictVersion("4.5.0"):
        Qt.QApplication.setGraphicsSystem(gr.prefs().get_string('qtgui','style','raster'))
    qapp = Qt.QApplication(sys.argv)
    tb = WIFI_OFDM_TX()
    tb.start()
    tb.show()

    def quitting():
        tb.stop()
        tb.wait()
    qapp.connect(qapp, Qt.SIGNAL("aboutToQuit()"), quitting)
    qapp.exec_()
    tb = None  # to clean up Qt widgets
